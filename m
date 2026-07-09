Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BEA3E1CE5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783636114; cv=none; b=AdySN9pAE1NIC8gkZDCa4Ft8J5LzKqor7F5GuLCdrmKY17O7CUxuvDrvcmi0JnpgF5BVnXgzzb7K20VqHDhfSQKTzcyYGW0lv/jHC+pserYMUTHkq7tDIAPOKlSGRXzldRZECXM5w6nXHtM53obeiiyLKJcQvEeixFCD+f3mUsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783636114; c=relaxed/simple;
	bh=WutD2gaUZGsQMVEp+clMCNSPWFLKlqExM3gfrHaFvmA=;
	h=To:Subject:From:Message-Id:Date; b=e2QsSwLY7rTAPRouDMycGdHQukv+0z+vJ4oc7lxdmPZxZWIHh3fFa0uEjDhHCTltva4U1d0bA+Pt72czdXfshPqX1sNL8ryn62nIUCIrVDG2WNnY8GUGfTWVFvZuM01SW1ws7VWmHigAKdWp9WiBmU1ftJAS9BIf28LadS/WAfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvoVLy6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvoVLy6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2B4C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783636113;
	bh=WutD2gaUZGsQMVEp+clMCNSPWFLKlqExM3gfrHaFvmA=;
	h=To:Subject:From:Date:From;
	b=pvoVLy6cULaztYcHkiokb4O4VdipjbSVyiM9o0oALwFwe0OHOjWbG0Oto3aKIBXk2
	 YAgnWDJ+zSs4EpQjNKgIpDuj1o4D5FJAKZhvdLCetUi8rrVOfiJ6e7Rdeh3bOddLKe
	 H710t+MFbJRUGiQ0GNDSPMeQmYrGd7MnZybzifg68EJ1JH6vm1r3Ml7wYAfrvXSd8K
	 G5K9IQPiEYHCkc6sdv8GYR8wHS1j0Hj7SKjyK0RdgBq9/5eaGXRFk1XQ2muM+9PoyI
	 dw3sR/GhCBmfyb81oSSCX7A0aMX9qMhDMo1YqxZ9BuA4Rz/S988I9psKf+nsmc+Snd
	 uXSPaWPrrSLSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA1EC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363611368.1037.11121803902598188361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b4bd67a769fb8c96f3ea3e2655d11a1e728b8642b9eb0cd72210de5f102409
Date: Thu, 09 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783636113
