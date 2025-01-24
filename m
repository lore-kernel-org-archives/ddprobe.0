Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FDA130A73
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737732954; cv=none; b=SPzxIybnyq7PBy9ntWRr8wye7nobSekSRvwLmsjy3FYhPOdz5khMY//ZKWPw9l1koRcIN9H8RIgdEyOEIcbm3jZOsAgVfHTlN04zxq+XE73qjdXLTZePNxSu6FMKVYn5jaMGCed7Pcob//lLzJJ/+0scrLEQkdy0OTXErHnNh/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737732954; c=relaxed/simple;
	bh=degJKhe1FLoJzyQUbNHaeePcoFcAqK6lWyF1i1K7gk0=;
	h=To:Subject:From:Message-Id:Date; b=AFmEjM8uyVp6BHworbCn0FS8W7vdoPHl+3AsqegeuauOPqWebTqqP4ewF12nkPjWobAThnugajSYu4LG9HckgTPCd3XIwKRTexpBPViMAuYXfwhxKi4c6cnv+foTbF2vUqkVcY8o6B6+IpSd+pwiDs3rfrOYH0ZIMiIkJbc/E6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpUNQlrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpUNQlrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B556CC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737732953;
	bh=degJKhe1FLoJzyQUbNHaeePcoFcAqK6lWyF1i1K7gk0=;
	h=To:Subject:From:Date:From;
	b=MpUNQlrtxISNWeI/SLXMu9j5Q270QHSs+vAJ7ZMjQwE/ha31J2x2/Dz4KYLKMTpxY
	 KrIAbdtDcp65uajCUyFE/qfiTZ0mDQfLLAmdmQa7sodRpz4PJZ8xCm4nxn1c2/AwQI
	 miPJQ5EGQzhSvnQkUW9x3HS1o5lQWDZFWIiGGcmczYa3v+MSq1cwI6rOzEQn/EFEu9
	 XUAGeeTNljvO68uSAEbQJWw22m2/PH8D+UmFF7/2UpoE18nBg7iM1UjA1syHdYghzl
	 0m4Z0Uw6g7pklD+KFm654CA94JhPrdUg175qXICKyUWOVXkV1pO9agQ+kCV+sYPUhE
	 4s4vdOrUR1ExA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D36AC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773295363.11399.11198008940107442774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380ea9068f5fb3203cd537b7879acece071dbd2665769064874594fb17a14647
Date: Fri, 24 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737732953
