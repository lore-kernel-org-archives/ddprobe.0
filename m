Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4034A2080F0
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743065994; cv=none; b=qrvj1bFKZvckth6RFltHZQQW2fyDUVQOWrqY8UOxKNg3bu+OxBl8YUYizMRFstCkumdNuFRdDhmX6QlAfJUA68IsG6V+3MfneiyLvWCCWC6aTTXmH8oaO9AhJXs2YCCXE0zw/EdVrs32fNsDh9YBG43CeVfGL57/DphIECDwGf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743065994; c=relaxed/simple;
	bh=vHG3piV2f4o+D23rL7e8ftOMBuV97buaTHhiOz4cmGg=;
	h=To:Subject:From:Message-Id:Date; b=MiqoSnCiIFlJNwigWnKDRe4PCjiFdGOUHUwMhu9RvJjfkuB/ocPTWKlXe8twTheDNJh3IoORrCYvv3hHli7aYnh3ltNgP4GcLHxvOM0Zw5rcOnqNelp/XtNA3rxWYbCFF/0/baCu58lNlgSmzpqjqRKGiBuQY+mc9V7FAixvC7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjUyx+4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjUyx+4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4552C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743065993;
	bh=vHG3piV2f4o+D23rL7e8ftOMBuV97buaTHhiOz4cmGg=;
	h=To:Subject:From:Date:From;
	b=jjUyx+4V9Xt3akpSGvSxp7JxmPezRhBfcyXibL8uS0z42N68ak0URwQVjcRuzmGvo
	 O7XsuDnlSuGJO4us/kV9bbwngo+kRwy1lrxX3aC45LbD/yJ5Xeyp1MAY7iNtequCOs
	 FUenpMpxib+6hbQHiWdWHppO13iLAAdGi3GTmHKofCrPkwv+Os8eADtBf7IHB7L9Q+
	 +MWdDctiQQcsLYGQXqVRrV4P59J+oLboU+kfsl5bpPac20Ha0s2EUksfKGxaKJg5C5
	 ugO9M1Y7NN1k7Rkhj82xzBjO95cLtzmoeM+1blTAD8cNvPelHPMSyLEUsPbjEV9Gwq
	 giwzpVtlpakbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF79C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306599363.27344.14666306137899493116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b3fcef01124991c375b243cd29c58814f9b59da5d474586ae16de434142431
Date: Thu, 27 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743065993
