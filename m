Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B4AEC7
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716427403; cv=none; b=BhUksGd8eJ0gJDjcHSVRwr+drgt6DRKtnFz/wNmDmO3eMBQ6su+1tJ6gUKW5JaUYE6M7ENi/tZm4JpgzsaZig5Ky1j2IvRbczqFeDN0jpRiTlfmMJHp3AjasX+kiBVTQ0qLVP3GsqaNx0TSveodJcmTzK1MFSYTMkuX/luzN3Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716427403; c=relaxed/simple;
	bh=LTIPlY3q8UZG82gu+gnfA0b3SzDa7JvNiWgUQfyDmZg=;
	h=To:Subject:From:Message-Id:Date; b=UVX7B5asfl6fTwJvNa5gPexQk0wmjxJc9M4J5FaYM8TBpK0jdJIcZniLYFYELMcnIgrUdvk34AUk/BHrGTZV4y5JwmyP/QeCRJgotyQysFbjJjwC/aZMQUnJNqD3/5sKIVOq6LGMI9O8uMlsK6qYigwhbBtJXnnd0XmggevaBp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv9+Ieb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv9+Ieb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E5FC2BD11
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716427402;
	bh=LTIPlY3q8UZG82gu+gnfA0b3SzDa7JvNiWgUQfyDmZg=;
	h=To:Subject:From:Date:From;
	b=Nv9+Ieb7kF02fr2AZUmUFEPJbw8qkhTfVQMzz/C8s9Ca0SYm3vwIpLVh/0Mok5EWt
	 tTMwwlQf4GDYQm9fsxWMavsXxPBIsOl9nHCglx8nqN+JYotsBaL0fB2BxaDm286VQh
	 0wPh/rhqR5lejSwA1ssgzN86cMtvTvLiaUWkRsHBS009p0KxQBfWfuWvxKKLWIPUqc
	 t3Fvj+PhJ/DWItLLCKsgt0btTqAjEF1BW6f5Cgax+9vtPO00Sk0nSEcFHR7pQm9o+l
	 PiyfqvAV0dcB4sSoczX7wLKYT8IrRbg9uZrXatm9uTqiqyFl1UcCFcOWwDEPuU8GtR
	 agUBioY9zNKdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE114C25B78
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171642740276.15731.3368185055060488040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90346d689ce99e168866a701291e083b4ce11180aca880d32789ed75ccd06937
Date: Thu, 23 May 2024 01:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716427402
