Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF852DA76D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765533774; cv=none; b=iqsFgi8+gwjSRHWOIKXqw40flAVhWxpFB3n+xvt6OozoS7vNVf+Z5VC0dTWvxtI2tGhAS3qTZgpxqSvQAkHPbxlCYuvb6b52rrtXIwXughijesUgKMnFfN/0eHIXQAGovW6L2w2m03QKL0zh8jsJ4Z7cnNOW6ufhs+YbiDzESI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765533774; c=relaxed/simple;
	bh=HO5v/bJyXNWi0jA43Rws2q5SLSFRnsD8VPymrSLFBlA=;
	h=To:Subject:From:Message-Id:Date; b=i7MG0I7WGi43WTKwk+duaBNSQiSdTwANa3FZ2/uIu8C2ZeUg4NRnc6IoWovd+caexjtv54BVTUQILU7C4nMur7AHXjl9W9jvp5CwFSssx+AsZG3KIGphBQkhTACxavxBG/TxEqgo9gQSuUlQ8jQwUVO1t5uuFmEN69C2ORi7vdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwOe+ECP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwOe+ECP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A76C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765533773;
	bh=HO5v/bJyXNWi0jA43Rws2q5SLSFRnsD8VPymrSLFBlA=;
	h=To:Subject:From:Date:From;
	b=ZwOe+ECPlinA/y4euysTfZbZBkIBfPSLJoab4ZgCli4k8eVQm9lSZMJ0KL0ZC0SU7
	 qjZRBeEddd7eQ44AgTcMLOhyx+0IK5OJLQQ2jR+uR4qKuH2zfOAow12JOZibIq1Wxw
	 n2Xz9EJznpUUJd8Ff0IGzTXB0nODcwE/nC1fj/UazPmpvw2VGik14+muDCm69FhlJR
	 14C1q0gen0AEKuWaXh88+/XhoumX72NbQ7c2eeOOYMl7r+G7ZjQFrCnyzEPJJODGhj
	 BdysGv8JQD4RZo3XK4fVbzqWwMS+fCpcul761XnqZnnKZxkq0n9smQu5hxgwiJzYNM
	 r30wN0lcdZq0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C01D4415D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553377359.29693.6373691948475619040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7073818801b488a688c6d7135e9cbf89510ef11ddf6706b810570d8e4b84681c
Date: Fri, 12 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765533773
