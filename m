Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BAA13C3F2
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762923594; cv=none; b=I5NhtJ81qnQKbd7ZCjCD8rnx7chhcgOZY74ZToAwqM/GuK7mlfwc3RIp8PoSlA/z2YKffC/1nmw1CDcJWkubOLu3Z4quUTIlJDb+qFS4Pdw3ESkBgHYYrqS0tiTRoDR0yMLOe3dUlFzLTotF8XXJxlRQd/+F0GuuC1iq/5nLp2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762923594; c=relaxed/simple;
	bh=eYSrhbKXHsj7v0P762dhCqhNrHymPvw0hb6I9gFnavY=;
	h=To:Subject:From:Message-Id:Date; b=qG5UqDJpqKH2lIsJj+alf3+HQJLfQ++dxm7/7KDZRXSvVLzQFL08S9tpgn6DQ1WrLUbmPAOk3KH1YHUoGL/ngnswByW8CwURv37F3p3ttAD+PGONSRaF2VByO3rWOSjSbQqMDJWiFSOFg9pcEWw6ceppP6vpLp0LIhJUgE/mBaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aC0UYlaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aC0UYlaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AD5DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762923593;
	bh=eYSrhbKXHsj7v0P762dhCqhNrHymPvw0hb6I9gFnavY=;
	h=To:Subject:From:Date:From;
	b=aC0UYlaGFLbJ+UpmATm2LjtY4FnqE+I1sB8pmZuP8K/8joZP0kNBNzdzRrFHoTI07
	 jshte5QYQswGL6Zl6varzRNT1U6KDLBsK12gYv4rjCnRE4Whiwvv8QgyiZobAxsb9w
	 4D+WQejF+hBM6MiEZziLi36xA6b1ZXgCdNCgvDDOaRpBNXO1XAebXu9ruhuxljKvT2
	 sRjfRvr6n3jjUFhZDu/UrdAWjQh/+SjJspM8i4DUr4w16rPZGaz/nDFB6pvHm/TIly
	 YKLXApH/lC/4bOfF1Lb5NxQMyD4ngsQAIEl/QyiWdl+sqln1Ulvlr/6M1TMw30Ih1X
	 UdcQHYl/Y3XKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC31CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292359357.19337.13752279941453381008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2262ffa03b7a4538e5c80a7182a7cf32aa0ee9c9a9a113ba1b196aaa5dce016
Date: Wed, 12 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762923593
