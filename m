Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C952F347BDD
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764874373; cv=none; b=cWEe3cjyMedZQ2BBkBSKOa3gdQi+ik2y3bhRv5CQRrQLBuvDVD1bwpRhcKd5m9YpR1FqVuYrIeqFUZVPOPpn3bZNI299IugJ8OOfc0nYverGv/NtTz3bUkYsLyGzmP4lfR2PPpOCLVzYd3memnkqpill/IRjSWNz3rnghGi+Lr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764874373; c=relaxed/simple;
	bh=SdHxY6OuGD8w0dQXIlG+jrrGUWlEJgWPE0wgK+WjufU=;
	h=To:Subject:From:Message-Id:Date; b=UyN8D4MlfIeOrEvUgRdvYyh6Yif11no00JfaWev2KsFYeo41BUTwU3kSLEBFG9joxaTOpCyh0KHjSRJ5cyckQ40C6AX8hTGxHqCZCM7pxgB8QK9obN8MSsEr1FO7z4WpUCvvaI5+QdsmgTfgGLldnouHRLraUt9G/StCvrAb350=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s24VBFXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s24VBFXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A824DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764874373;
	bh=SdHxY6OuGD8w0dQXIlG+jrrGUWlEJgWPE0wgK+WjufU=;
	h=To:Subject:From:Date:From;
	b=s24VBFXjdDr6mfHl8JZGG+AUWvdGJhDPs3R/dt5bDZYqNsGAr0zfbORY170pJ3lLs
	 cGvMAQwoTqMjHj7qrL2ol7SbOqwYdPeV+w+yDL1QNUFsVsW3hlws0I5MFRE+YN5jJe
	 O2lYMK10v16k+EifgQ4noolPabTvdPB8wS1vzODUKcJhvPYosY+X4tI1Ji8qYGvsB5
	 7GJNdtQfPqjVwewEEJH73QBDsD2HNQ5cbC0f6mTAVVbOX+wrSGywIV8dp3/xUazvFx
	 AE+vX4jmTN9C4gzHW49lCFQd/uIcmW9Z1aAWF2eTTejAeRqNMdPeDGP4LbNnPMEgPd
	 YH2x8DwbRLwQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D44D29FAC
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487437359.21016.3594585914519352231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47110b6d88c33794f8ff130c69d90bed1fc185045f86151d0c223bc33e2b03f7
Date: Thu, 04 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764874373
