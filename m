Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280102E370A
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751712595; cv=none; b=cwWEVwGHH6gknqOoZu7gJsJmdf2bAZSj+5PUa18kZuf6eEZ2jTbGz7mLPMVhgrMRPS1k5sEmnFhFlqIya9Rd4Srixcbb9VvqZoXf6TwBBeQNCopfXr/vU2e4PidhRSZesSouACxsFi+BPSJlY9Qd9zSGFUlSzzeWguawkNeT+eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751712595; c=relaxed/simple;
	bh=Sx/AHi1i782FD1KalhnlnemKFOeR+lQapSzR45OzNNA=;
	h=To:Subject:From:Message-Id:Date; b=LLv5F6whxWuHchMfiZ5+hRl2V6fPJTdPuDi5zei76UQGv2+o5ZoquEcktv0pgCdlL/5+flvL6TCA8/1H8SF3ayT8q30lMyT7lOEWcXWf94uElHaGREKdlYxWHr9bYz2hGnmIhBho2YTfzEru4MWZKEZUQDglPu2XMjJCANhO20U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n005EDPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n005EDPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12DFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751712593;
	bh=Sx/AHi1i782FD1KalhnlnemKFOeR+lQapSzR45OzNNA=;
	h=To:Subject:From:Date:From;
	b=n005EDPg/PmKqS8fkdSMFTangmhltCZ7RemU16fZ9tYqiMjMlYBmLVHPIK+7R67JU
	 MrpHfkHkBgyP9qm/+3gDP7m1i7a34gXR0DpAjVMa1U/41DOFUEbSbFK+qB6zLBSl44
	 FwGKITzVEgIOAGgOSPq56o8BXBNWo5xw/R4BWox+VPdl+T1rKtOaHomWotP5ucAdHL
	 m3WAFOYn+oyjrc3NE4emZB2LZHjnDm0lpcay16eFb8G3+NQlLl+FFJ4BWa9wwhRAz/
	 jJ3CzOAU/RIfTcVvnn/fI+43cFjDgvq8/6qS+xp7oc3a4Fq3ofBWDoHFwcOa+xVLVd
	 BktFSW+pPp0MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85EC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171259357.30160.9932781876745984028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16339462127d02720028ca3557e77420671a5b6b4e61c57c559833eef898e69
Date: Sat, 05 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751712593
