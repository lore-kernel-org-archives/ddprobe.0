Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A2B26F2B9
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763725914; cv=none; b=S57TuOg8e2n7P2feXMPXlYzUzDuFQhubFUoMYddgpvaWvfS3AOFtqHr6XO9cNXOE81IdrKtCWVQ+5luutrQ7Wwmqsw0U994na+/Jb9bUZDrsUsw4gLamyng1JdCK1vY21+bGhhCKmDVvHHn+BSXaWSg9BdhfXIP2k93d69inMlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763725914; c=relaxed/simple;
	bh=mGYYSNaXk4FRIi1sBjHC05TEhj3Lpud8WbS+hDNq+l8=;
	h=To:Subject:From:Message-Id:Date; b=QHrPs4H8Sb/YCcgpZl9Y0Jj0Tm/Oq3Z1afsaHMT3+LROahEFhvkBYsdsO+xrSRqOg6SGlObJsHAwboAjEmZ3p/VVHNIRBcPAKzt+qIO9gQpUDogLqghxtmtPkN+h0+1rFofvExLT+HK6kGeqwEPIYokWuLLoZJVZI96MOjz4Hhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOceKQty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOceKQty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F0BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763725913;
	bh=mGYYSNaXk4FRIi1sBjHC05TEhj3Lpud8WbS+hDNq+l8=;
	h=To:Subject:From:Date:From;
	b=dOceKQtyuZLWbqxfTczX/eLiAu51us6X9eEsSY5iM3ppLX5rtJTzEi4ElcN10LWc+
	 QSgYZO/YPBwTJA2eFIV2uM/x3JYTPlvIY5QroOEe5ptnILfpK00ZXXA0BR7tMMptIV
	 xD8GpcRUslTifBt46KumyKtvZdbb5ZQSzyibZHOTmtIkN6ef1WyMoom0MMGi3Fv9+7
	 bwnVPL2IK7zRnrkAEDlc0GYnTuup5XgvkveocBMyiOl8vP4q/ik+ToclqqN+jOiVTN
	 Y/WOnVFH2//VER79L203uxBKQI0ZhTWLToo6yQVkcykomqHXJMv8V8ZSu/+kYzU3aa
	 p9P6k688dihkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E8FCFC265
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 11:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372591358.22364.5557234235293021703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da85e0e244367061361d6cf8e81d55ac832c551984362620df6c93b4d48ef875
Date: Fri, 21 Nov 2025 11:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763725913
