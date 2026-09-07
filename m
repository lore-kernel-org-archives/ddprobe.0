Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C384F55C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788787835; cv=none; b=IULoYN+ngt5bSKf1qUo6sguQw/CvHiZxG1B2gDIv69kBHo709OuThzSjprH9O/9PLigEeMnqdwl73zGz71jwL2Ie3+aZrzRZgTUeOZMV/HYiaKC1ZhUSQN6HYFysI6tm+V4GWarByejNLKrzaYUooj883dwo2WWUMbr3gVxhhOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788787835; c=relaxed/simple;
	bh=+qONgSj0JEU9ZmasD5YzKw+Dy/YeNIvRRRB8DAOeL7Q=;
	h=To:Subject:From:Message-Id:Date; b=cplY/7nRcyinCCRJdNG1Iit8ewyhYM4TwJqSukgIGo7susj1gIKD8qnPOGL8gWgOAbStGZoT+9As8Uq8Y/6SSF/GyzOUxMFPYsgwph7qs5uXJTSVF9tpurpgC2U4lbaHEXbOox+s3flujbQy2aDoI5xttsVeSBrarGVFJoOn8eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHgopmRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHgopmRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D155CC2BCFA
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788787833;
	bh=+qONgSj0JEU9ZmasD5YzKw+Dy/YeNIvRRRB8DAOeL7Q=;
	h=To:Subject:From:Date:From;
	b=fHgopmRJ5AJnWIHP4Kr/3zEFUot3oI/fB1l9/dNp6gH1WPguO9lYGGppC66JiXeSp
	 86P8cKKcEoTEYngNtDf+LH6ix/87Xmy6xy+QibjPIfXrbAnFd6bjhJoeAsn2+ISodM
	 1cdS5aLNLv4GAHYFJvPgdLWtfsolGN8nGNm1TTJSe8eWFKXkdrtfBlfPLrPaD7hdIp
	 w0uWG+Pd39+VYFxxBpfL7ZT0ELrkl7E2fleTuj27p5oNvd4ZdcAo5iz+xL0w9dOnK3
	 seRyJkIZKwHyle1N26Z++S23ifIWi4ZKbOMtLvxgoP07MVugjkM+i838v8n6SkfWes
	 G9AP7Xb0cWP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE09C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878783370.24342.16378075114689870989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ae107641a24915aacdb1ace146a9196c0ee7109ac5d2ed0778e2ee51b9ade6
Date: Mon, 07 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788787833
