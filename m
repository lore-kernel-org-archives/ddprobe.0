Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2451D48422A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787670634; cv=none; b=qpZ/7ZG0eDzOkFpXlhF59MUqSzHhZ8/YUj68E+7NfvpjwQmpDkuNikXIJVupyMB4XAUXUKAUyPhVjd6hUAkso2JeyllvTSXg/Z94GPKNF6P+ER7WwpiQ2Z+xz8vdX48uFM4xqToR8//3nX7OwogDuwzmwQx7+3CE9NXun6WsPf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787670634; c=relaxed/simple;
	bh=X1W2vUSkU0WkqOlOwz+tp4+s1TmDhVeFh3NlPgdVNLI=;
	h=To:Subject:From:Message-Id:Date; b=VyekfxSivOx26EjUBWO4945fEcXoV0k4hD84JIytztZvf+gOE4R8FjvrVwlf9k4XAEilmCDMSVkJkNMYM5UhwudOESYk6q5LTm72Tu13bYgSIn25Fi5FxbITt7dB2GYySngzM+qPwkjySDj8Gv5CNHiN9rsRP88A6gkA5x5swUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDxrJt2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDxrJt2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06E5C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787670633;
	bh=X1W2vUSkU0WkqOlOwz+tp4+s1TmDhVeFh3NlPgdVNLI=;
	h=To:Subject:From:Date:From;
	b=gDxrJt2X3sy60KKoEO1o+BsAvCndqFj8xbygJ/WJ7SrQCWfa71UV1sulmQsqy1mcO
	 aB9XeiimfHqvAM3DJz3XJLm5a28nu+YU5cxACUnSEDNdpVQq4bvWRZvkHPQhLKk5mr
	 XZ6gB2NCwaCHnMvNvVHxzh+bqKfPSa/sJkSId8ND7FIbRsy6hl4bd1hJsOcqc9eI/v
	 fhKnyAtVmvgcOdPYa1IUm5cGfhj94n7T3tYKoBjweG0zfixoTvZcNE84jAOzUWxW/C
	 Src8rJLsQG88gMZcAhkU1R1A3EWlZgsup4LgBn8VauzCeqwS694PJtNbbx5OhFr5xw
	 g+7hpcCkzwNBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F0C61DC2
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767063370.5919.8259032077826618964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdb83bc9a21bee6718903f158a7f13ac67832ed9edf760ab6f60d9dfb0b6c14
Date: Tue, 25 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787670633
