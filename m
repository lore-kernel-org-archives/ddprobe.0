Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B1AD27E
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762289394; cv=none; b=sbYrqebPitM7Cd8+Ex98J7qy1nJgJ3hX1b+rMz4APh98ePgRXfzOECWRjGULLN5unTPClx2Nq4mvXdan2k5EZe9UVPK6OxvJIH3mx+LnLTPb8UwYgQ0RpMesx6Ez7bVFCjFMtzgw7f11moivulxcYX7KdzNCKs3P22ItkfyiARE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762289394; c=relaxed/simple;
	bh=2P0O1TxaYR/WEuVbHQFnNVFWtARKIuV0ge4yGa1u6d8=;
	h=To:Subject:From:Message-Id:Date; b=kHuYWPsrZWlyWq2W9q86HI+psUgJBJfum8bOZnNr72g7grwxro4my6zYdeMOXFukuEoUCXEnDeckDd7U4x3TYOwwsLr3YkbwrGgthV7ZJz+wHCFZYo79sGgUp8+NI8/QeYlEbChobENQTwDIo21V4xuH3WJjPBjL7epulLB/ek0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxOo7JD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxOo7JD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C76C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762289393;
	bh=2P0O1TxaYR/WEuVbHQFnNVFWtARKIuV0ge4yGa1u6d8=;
	h=To:Subject:From:Date:From;
	b=kxOo7JD//xu/idoQuNntbZB7eQDlH18/nbhMFV5ICsSNlxXDxqH5qbKRJZv+xMG64
	 na5kkNU3kgHHFHJES2/0YCAZDLTZ+dbFtkkHEeWvqvZK4rygXPUrKukdGon6si9Kyg
	 496aEl5k6V0Guwj5icOtyo4xB75lVHLsKntRvZ3iQRXOxmAgm6i+XFCATYPatEJDv4
	 ZW5xmQZqyZFTYzykm0Loun4Im56BncqVArKgQ+QeTOc6j1rErdGVape+uQYuWp54Yh
	 6S3PxG1lbIV/+6WoiMQSG2wG74RZI+SXfjI+P5qFuESxg94fIc79lPDLNH7/6xgqRQ
	 q9nxmtk7LCuyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954FDCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228939358.26498.12214684377159421597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2cee4587f5ac9353ddb5be776ef91f8fccd29ec0e7d4789e28b68ce7a08e9c
Date: Tue, 04 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762289393
