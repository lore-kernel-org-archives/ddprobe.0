Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242301CE6FA
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724790354; cv=none; b=pn8UwsPsbO6vw410v1vFZiPxISAgs6rwh60fcNfecj68ONEIHnBmb951OQIT7g0hlgrCXuLM8VlFGQNgCHUO8rnsDaM5dums6fZW6iUuIymJonbffle+qVaMj2jGyziasdhaWMwCEVoS3DN3hUDyO+hG7Fn1UjpIFV/ygqLPs2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724790354; c=relaxed/simple;
	bh=CQL//i1SzeiAPKbBFCKTQ/Y0QnU5p8Tva91Ior0zTwA=;
	h=To:Subject:From:Message-Id:Date; b=tt8Ycv4ybNsDolx/S5ql+SpbWZGl37TZwHw7sxmGrABVI/uZZ0vtWhfhXr0MYl0mO1kiSoXw2bXgY7AxFBJGTLj8olNyODGb9FKXcBkvv9SCxb+3x7lydO5udgJQOs/adZYr7vsUikCpzeCU0+LnJ8DyJ9y1ePzQZpkqnuhPLXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFK2dC3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFK2dC3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAE6C32786
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724790353;
	bh=CQL//i1SzeiAPKbBFCKTQ/Y0QnU5p8Tva91Ior0zTwA=;
	h=To:Subject:From:Date:From;
	b=ZFK2dC3AivM98cI3tgWegGFVVWD6jZsuoeFwuHYiWHJynhs+OhP5QozKKqy4xZK6A
	 jNU0zHoxOVJ2w5ABmp23C26OAHbce09ZGax1V3kT2J9B0S7hkLtB8N5kOXqiuOvrIK
	 ifne7IS9H0DkJzVFlmBTqKOJHPxHxetb4oxQSYSvp6+CRMqW0b/d24TuxgjinUbtuw
	 YWI36cb2aPoTBr7CmgLOSF1tZvTLZdfsPMbI7a7IgyaIixSf1ncsnRqZkX+uOdPPGM
	 pKJG0RAfYMeVrlxXnxzbsfm1OwqRKgSpqrgNzehOjUH3FXmtELjMDWWYuiFkWUzqn5
	 DMFgR+T4zNEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7A2C54736
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479035363.16511.14893498246360687756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557c13725371907b1ce3497d4a9bf69ca3fa045697f1a3efe626e4919ead3e4f
Date: Tue, 27 Aug 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724790353
