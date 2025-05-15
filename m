Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4397110E5
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747288794; cv=none; b=KbeFhyiyqaPkialjIpxaQgD9XBwf3M92MFYPsM0k+BxZtYR+N+73Z8mpK09KG1Hsobji37/UMgO1aJDJCBWhK8gukVJb1ufcdRrBYFDZfKiL+iAwmBnzVmpRfRpQUDBwGL/uZS1UKq3Gx/QbjOk6jQrZeL3UpCFcaUocjjBr9fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747288794; c=relaxed/simple;
	bh=RQuE9cpumXvm082OSys7MugEz0oeCCf8iz2PINOl0GM=;
	h=To:Subject:From:Message-Id:Date; b=K7v8RYKd2yBJv0TYBaTCljz/8IX86cn2dU6HKcVBVUA8CP6wv+bGCEoXmkoILnGPS334Le7mxttNvf9pQ0drPvtWSPODwyVaKw/+4zbKKGqe0yOLgG9tCs6s3Dr2rPtvaRV8efBimyTnb54tzM8VzhyPvsgukCBoYalcx2CdotY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfgeAZjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfgeAZjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E13C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747288793;
	bh=RQuE9cpumXvm082OSys7MugEz0oeCCf8iz2PINOl0GM=;
	h=To:Subject:From:Date:From;
	b=SfgeAZjh5u+I2MHyu12HXsDb7gWqD2/5wQFehG50FrReEmfYDAXnsFDUzZpDHrZkF
	 YjAaxfu3ixDpONESlBUH/HPiuNq0IT4mI1skndqsZrx9i/RaZ7BNIg3XQN7ck8vfg4
	 JMJbU9VddjUmLYZ5AX+SuNl//9ra1qjhHzGC2tuIjl1W/nKhRf0wUlecPVFoGJMEpp
	 TrT08wzf+sSRREiOPwUWx9ZwSq/eIUtlfRRSYxbZQtg0ihFNW9DW7IS3GJkL47wXYT
	 5cbu3LwVF6n1REzj8fx5T0dMGcLUdCFFQUn0JFbVG5Tg6BsxIvlmWZNX/MVgEbLzFz
	 2JyfhaqqN3K+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943D4C2D0CB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728879357.6169.81837212363969187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b128ecb1ae3142bb3b9c0045e296bcc662d9b59f8bacb1ae6b0ccf784f28fa
Date: Thu, 15 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747288793
