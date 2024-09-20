Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C287185B45
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726867554; cv=none; b=nlK0/cBy134AvqaOYXv6sM+KPy+6Ls6UJlEO6DyzxYHto4xqfJ1YdC2yQCopIYb1BJBvDr5KCxp0mUnVFjq++7/si12zumiPi+qbeOTGlsf67J06i7h4kkPpFDz3wlJjWkAXmunLRXJj15XBr6wEp0TO8cy/rroknny4rsIMwlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726867554; c=relaxed/simple;
	bh=PVEX4Z0VNYmlj4yhcPWmrKmtiF7h0HA+vlQZlGnRD/g=;
	h=To:Subject:From:Message-Id:Date; b=ic5tikJvkioK8lE9U8UEypceObfyWV0saJONoSVbH4eVUd89L9sCLwRDuLuxqgufGWe5WevNblftqiv9t5zRLagjflkzqEdjaRNwd2x/UeSprqRoPidZehP8oT+dm1F1F3/tisEQ59murb5oSAFY87wvBIAZUfycOcXR2GWzNSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiPMgm7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiPMgm7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B403DC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726867553;
	bh=PVEX4Z0VNYmlj4yhcPWmrKmtiF7h0HA+vlQZlGnRD/g=;
	h=To:Subject:From:Date:From;
	b=HiPMgm7Vb4/JYoE3H0tirR+Ch8aAaCjwF77ZjrDXFunQ4Nkg+hoM3qKdJjHN+kS6e
	 wfsL30VMijolsVJ8cubIFLSnZn35CZ8xjmFBfObW0fXXf7p7PotvfN1oJIuAy0Oepa
	 R77y8xZ77wRAAChG21Xa9Z+9IDMjX4RvVRCl6xNgl4rLYtqOABYNVn1R7JSHBwfNJO
	 6Ht/+o1SfbMWTkulkXEfVIR123hAC8d8OYWh7i7LW5lGJiwpa/AAuWloH8zaOpQMuH
	 +tfLNse4kQoSx7c0Vlp/KdghY//2vUhri9EnEf0dVwatu20gTC+BXl+UCWFusbj2MU
	 3Zh16Bxl+rxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B16DCF9C69
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686755362.11477.18019520586495904937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd1c07fcce58f5c02f149930ffef5b0e587c91cf1555b930079b2bceded3ae5
Date: Fri, 20 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726867553
