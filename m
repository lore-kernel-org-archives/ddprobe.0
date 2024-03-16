Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0519C2F28
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710594497; cv=none; b=bQDlXmXkVfCiZ4Yk4kxpp+qeEeE5HHOZUr4BUZB2WOf8MFRnNhIyi7sFxiEapJhwSpBGwhn68QiFfZkZlzNWI2/uWaRecpFiBAsgM9QH645zpkbO6iC3vqys7MUHB1b9mw5lV0GOXIYNeNoZW7c4yxfDlVN/4nq5A4YaQVcWj9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710594497; c=relaxed/simple;
	bh=xQP1CxNaTXwjATEgmDwl/xQ0tbWnKuLxvySBaynEnBo=;
	h=To:Subject:From:Message-Id:Date; b=qg/WAtMtVjptlMN463A1fzVlmwW+DOFbD+v3WTV8i3K6xNH0GUpPj0pvBQYLSww2qp0I3lTYO1M/xZX8Ieo1/LsXsx0ts8yypbJ5BjZl4Bg9Gtjt29/JFdLlbt0KFXhQ9N/Ms/twGo8rSebwo6pp60+Yg1e6qxaIhaBYuNo3irg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvCK55+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvCK55+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787EBC433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710594496;
	bh=xQP1CxNaTXwjATEgmDwl/xQ0tbWnKuLxvySBaynEnBo=;
	h=To:Subject:From:Date:From;
	b=bvCK55+dIJXGU7B72dg2WSg4ygTSUAiZho/O78uefHOR6px4rfUKktR941ODyEnfT
	 jgIQEyGqOY7RLmXREpITknlfK9JwciVhvp6dZocc28Jd07dOSivdy026E9KrAJFZ2x
	 iNxomT6cBkQIhc2MGaEUG6zYcu856Kn8msxnfb4RdfG4FqVXPZCwtmTksJ1mrRPM8r
	 TDeHzOsuiNGZfwB46l4y5bmgur6zE6OPwY0qYAq03AzKWj3nd3hUJbQWfgndA7rzRC
	 fXaztq2ZKZhZyIr8u+F9qqKfXHE8kdkzHYxx/8DpLsAZn3lc76ubeGF31zs4bLIvXL
	 nWDocDBKEunkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67016C54E5D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171059449641.32504.8332614359349728095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478c177543c39ddd0c9c569dede547b96f4a7ed95e87f4ecd8143301201f91ed
Date: Sat, 16 Mar 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710594496
