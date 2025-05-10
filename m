Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3772222D2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746886194; cv=none; b=VINlg2cBlKpRsp2c/x0vGOCOjYWGAu37xAg5KAq9JOu8hrO9uwaC5hpuZeVfOfh1HJx3+BrrNjdUhrrY1lw0IuKGYgrK1lAMoy9oXuWgVQCYr2KuYmAam6eH8hFJUwmf5Ior7outpbaP/uQoYr3XNzCEKamCCxP3ihjqMbQ3AtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746886194; c=relaxed/simple;
	bh=YtvHh9K5wIkhgk28taXK2CR+jRf1SSfco0OQ5lYwXw8=;
	h=To:Subject:From:Message-Id:Date; b=HBdbz3W+RuxdyhjLatJ/o4fevn6AGZGqE/8rRGolg5UvmlqBZkCWh5eT29sJd9jfb5ZeRN7HomYBMI/TeJvTqJuKyjDyTvS8qwznMOI9Ko3cLfBKdlBtAqclmolf6P805ckbqZRFCZhwvdox+ctormojn1iVIp3ovvW1kyURv7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bIGjxwCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bIGjxwCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F08EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746886193;
	bh=YtvHh9K5wIkhgk28taXK2CR+jRf1SSfco0OQ5lYwXw8=;
	h=To:Subject:From:Date:From;
	b=bIGjxwClr3srhme+EkH2MPAOzG/v1vVEnDLkxEZb+Fu1lw0V6fPTnT09VRzXNsOFk
	 6Ft0GFkGK/ovh60EO/2o0EB2A+LHZ8e54jijgmtp0FJNLPboFmjK2LlOq6ZAEXge7x
	 lAowGgk0bJk9HN3oiRLzXdwllQbT5vQN985RDCeOaJyZfTzD5pD2SVoiIlIYSL55GG
	 x/j8N/QezcZy7qJmHG9UboL2voICy6H/ZRWL2EwiqXFG5jel21rmhP8x5gSvxxM00X
	 H8n7Pjd2JWLVXtyIgCJwNS05U0h2SrYevc2ZNr/5W8jHhAoMJQLTtTIuP6csYuZMLT
	 G/e8283Vsg2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3EBC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688619357.4307.8543383368419219689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3199ea5bbf1db49b410511e5d9e850df90d7c429f60c1cbfee504f0ff884e747
Date: Sat, 10 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746886193
