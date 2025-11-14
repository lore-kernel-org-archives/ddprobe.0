Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1736928D836
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763139594; cv=none; b=NzAZQz3/3M5s9etY1S+eJ4NutrYYyn34xRv6wDGY+LOKIceIJSSn5z6bWOZ9j0eJJDpp1fPDNxJZeQPX/NfB2FFKv82utVpcjuhyy6+V12UQXndeV+mMDCJc2si2ztrwe8Do7J2Dg8O1oINZQA9gdFD/M7OK0hEdjJYW+zkpi+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763139594; c=relaxed/simple;
	bh=g/3Fs7pECJZgspDzvvCgyuPi5y2n4+rMn/1F3ANfTJs=;
	h=To:Subject:From:Message-Id:Date; b=r0KpIUWpe2Hf4iJ51i9FJZ0wx32l2kkv4aYYnDJOezgIW22atglSTLAQvkJldqeITpv6BCY2373O5YncOS8KFNndE73drpqziww/Wj6VZtpLUKzjtRPLaQJgwowN2tSwW9fw8NW1xrSAv4tFeAjaufHjVzpI96GEmVNqARXzBwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUKa9xkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUKa9xkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D001C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763139593;
	bh=g/3Fs7pECJZgspDzvvCgyuPi5y2n4+rMn/1F3ANfTJs=;
	h=To:Subject:From:Date:From;
	b=gUKa9xkCIA+XK9UC5hQK/oZ055RAf4o0SePl3TUeaKji5X30WpDcYcJ2Z8vU6Ff7n
	 Ka0sBCVhimRtyB434EdsZzD3RrwWpW1I43pXafM0pzdkZEVRdelbowAtA0/J2j4nGI
	 Po6Jpul/II9QxiJqVguzbLamZ2CqrdI6Xgbo1mVY26xYA0ThHiZGbLf41BTAJWV4ZG
	 jVWza0SE2Wfuf6x5alyIkHdzbMEJUlTzyJyaPqVNfTLxodqyX+9ni+yoKMBzpfB4mb
	 xAEtnbxysPypD408kVQQxb9Vu16pPEpgzPD0tutyHk28rpfmSEp2mJ2w7JSmYXXn5G
	 JYzxlbwpbF5eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083ACE8D55
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176313959358.3583.3347186439606257090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eba655204c393ad1e094df2dd3697dd15125abdd9075f67332c4335907eaf59
Date: Fri, 14 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763139593
