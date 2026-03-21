Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6B134D4C2
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774081494; cv=none; b=MCLKn3gfq5DvdBh9JjKQ6e55N3w7azynfS6CTD4yXE51WNTFV4cL8fOYSX0vYAhqXd2SG0M1vZ6LQ38GE9iUe94Lm0bsbx4CLvSnM+UYhXDvO3WQsdiUhpGhmn/WeJ0vdmFo/qzc4hYUpvrwJeXdvK7yz1nc6QReJfjX01UjmX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774081494; c=relaxed/simple;
	bh=1c+bFdOJG26rvm2ILommudjtJ20fvKWqCEGZycgr83M=;
	h=To:Subject:From:Message-Id:Date; b=ky/JaUj0I5u5B5T31EY4pCrCy8oZdJiPBZI/P298r9sbhh/gYVHO0jvhMupN2V+YsYtTATk+9HO4SpC2a/yKHGcplMpPMwzahDL7GObUV3NJt3V7aDQ2bTfcRrTR6AtcH6hgw9MonglVYKms4RcWN3KnnLkINH9M60wYVn/SloM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUzSagai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUzSagai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF7EC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774081493;
	bh=1c+bFdOJG26rvm2ILommudjtJ20fvKWqCEGZycgr83M=;
	h=To:Subject:From:Date:From;
	b=cUzSagaiIYbCnQFkjxZUteoConbLLHiNETrqxevQwxFC+aCxgAhNuQA3x7Iul/uIa
	 UiaB6nCyX+5UoGRy5yl76YC+E1olupDG43TCdUBrRqHWawT1RdOxu1NXORKxZb8bte
	 xS3YeVpd2r7A2Ct1//UH49I6Z4oyPJycouHKgpbWtsuEIMNArBZFKqrq8jZsGgPAZV
	 rZqaRXUvbNlK/hnAMSNXoo4kymxIlyF/Ibpc3XXfLfJ1teZfnWeGthwk9g5l/f47/j
	 ytwDl5S53afBhFH3NnnqA0YdO+9XBq28ERq2YZ1iiB3rojvryKEAWC+6jmLUSZ3uDI
	 HCCY19Yw+bz5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE31094462
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408149357.8590.6199422245037215620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d5ed50aab88d00ab46679fe8b882c779b57d72f4a07ac562cfad869f8f4c44
Date: Sat, 21 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774081493
