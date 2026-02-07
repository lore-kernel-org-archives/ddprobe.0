Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE96331A40
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770435234; cv=none; b=YyURiss0tlMJpLP+ukyyi/Bgp63gkOC+3XBikZwXe2CvDTKSEz5W7EpgcGlJw2OozW9FyoclO+vH90r+KlKNE4Vmpff1IU1AEW+LGyh8hto0NT1eVLIh+YwXhhDAFV46gPtZCl6rZ0fIWDRizDJOsBwWH9iuJZYV50HHyy2rp8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770435234; c=relaxed/simple;
	bh=wLX2aAOEaMgsml6ymCkYJQaYRk4mJtsOh0vLuCejMT4=;
	h=To:Subject:From:Message-Id:Date; b=T8SMO3/0Bvoqilo5uj9CSJjUyMWPbycm++x/X1NoLjkEwsgHRq1Mygh1TzjnujQrIO8TQLrE67s67PwMcvjNP8MnDBn84t0cZ3Gq9rfiGXhfFw67+16/hNzg8OZdBxZx8q+6kJAnX+01wzo3K9S4TEHzt66gKdr4etvsn15QbaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhS/ngvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhS/ngvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3548C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770435233;
	bh=wLX2aAOEaMgsml6ymCkYJQaYRk4mJtsOh0vLuCejMT4=;
	h=To:Subject:From:Date:From;
	b=RhS/ngvQS3j9cZw1PsX3+p8qSqPRA+K2J/thYbzQ4LGtgL6ovSuq9NUj1fS7PUDR8
	 PcjI11+SkkcRdlD3fWuS4u1VNa7yW843Xp8SQFDWl2nvEtpHVbqDIcJei35DZRUrcj
	 3QxOe9AzlOuScA2qppj7zUwe0MnGL3eeHXOkKxJNwa8810UHnsNRhYf9DzNAXaQNJw
	 gOZJ9w9RKdEMGoBnKWhvrVJ1l5LAq4O4ceXm05gG3TwmcIPUN1RK4h9v42HE4xUSMP
	 phsA57IN2cpMdYTjBZubjmVQQA802a72LHKIDb8aIVRXjnCEmqBsf43pOFLDqrcqVm
	 zSFAziY25O2hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBB1EE6B4E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043523359.15005.15291141133565357790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a464f4ac18056e8578dc6f30fc25d5482effd09e998f759aeb29ea61987632
Date: Sat, 07 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770435233
