Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182EB220F3E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773663894; cv=none; b=lH4ddLhe4V3iFUsrscrMDh9a6tiMNV+U6xPD9ZR4jB5q4+fpKwcAs7QEr9chI/UAiCtGuXnur+0cz5Vb/Mgv/z7fXK3pv3Jung6A2KcSl9smDgr5LxEn48HYm6MhC/CjOD/81FWiOCuhbVLZ0fiBuCt8PTH2lcQqwKRzee9b/DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773663894; c=relaxed/simple;
	bh=RvRkfqf/NaMEMDJt/wa98zW29St7oqU7sprpGw4GZ6o=;
	h=To:Subject:From:Message-Id:Date; b=CkgBYa8/OaWlFDL0vEWf+lEBpV1s6o3pGD7e49PNOnSqz5YPJ2tURKebSvwurh6X8UJxhVWdVFkhYEaLgqLcKPQv3heTg2W+IDykfW+ylIXLNBa6b60LEsjvn5IzheE92+fBa68dAk8EouAKT5KEkNcEhyPZRid9JnxcHj+JFeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO+i2ugI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO+i2ugI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC85C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773663893;
	bh=RvRkfqf/NaMEMDJt/wa98zW29St7oqU7sprpGw4GZ6o=;
	h=To:Subject:From:Date:From;
	b=aO+i2ugI0Z4bDFIN2x4/XtO+U8AypLbFCR7kJq3Ud0N/UgZJ8W4vD+9tDvCJfHug1
	 GBiOW/fhhaMwjupvaoJNfUYWPNbqBT8VcPRE268MsN/n98RASCXrNuEyOUuGfKhUt3
	 RTEZ/vVmfDbaYlLzYTFZ2I5qVVsX1nYkEywAxlAYkhTVchmrN3rlH9+BUXHpTx4t09
	 o3ibXLyYx5SfPIvFO1JkpSjhewDi+Kfbdz3MXjMtORI395XewX2kDoSVmmaY1d4r0x
	 1Rjp/xch2rIj4ZhXWNwFRGjnlIrHw78dXF6B+Lrmj5iZJO7n3IMCnQkyT808V8IfE5
	 kPI4LM4V9t+sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76DD58B07
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366389357.1042.10862963717089530263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74561a3b282b15b242a605129ecf53a0fd8e263719001a61237e0417fca3502d
Date: Mon, 16 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773663893
