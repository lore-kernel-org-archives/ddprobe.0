Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2366A14EC66
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722690354; cv=none; b=apfGyTIxp2RodE32RXLqLaY6Cp0OunrhOz52QxY8UjMzi6ifaYsqIuASTVnXvHE485AWcO6CKrnjb9QX1W/Nayi5/nON3EzGErevXJLlo5Kh8PM9rOQuBJF5dSID9m3vlg5ZiqLtjWm3cjrhe+UKqGO1klMO2INvO7T/jFBuT1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722690354; c=relaxed/simple;
	bh=aF7oizCz9QYep9cERANe7l2iNJAVTmRCKkIQR/q+vSE=;
	h=To:Subject:From:Message-Id:Date; b=omJdPNJccKDLNcSGr5v+sBjsj2Mq5vgLrdilCcHrOvejBEtAsp625l0GWs3Q/ma0iccruY1zg1/ISWqV/GMoK3mDlvaWoZl++IpAjJSbYfkCFAxRlEvDor5ZEFP3M0z3azqs/xG2Ow5PUM4y/HEi782D9R3PmymxPrOCFL+qdoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S937xEyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S937xEyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F8CC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722690353;
	bh=aF7oizCz9QYep9cERANe7l2iNJAVTmRCKkIQR/q+vSE=;
	h=To:Subject:From:Date:From;
	b=S937xEyNMrWmTIWUiLden/swg6syHuJinuzDh8Ns5Rm6/ySqKIxODM5vtHaVpAKn1
	 xVQ0RNYFscJv9QkAW/hbyRtmuieEvmyytVrMgpD8pj+saEM+jsXtz3Nq/0z6K8w2VL
	 9V5rjQzdAShpjD04kwUmk1tUkBOMJ1s2udfjsrPtErHYlIy0n8/xlf7PuhcMZBiSK6
	 ykMldXgEwOE2h5HO/HC/yVwthAvdzfjUt7Bzb+t2ojqqDoJlvCPutAYZ8Rrn1ayxvJ
	 trHkzeVdAGQW7MyylMAxcb9zCtLtmXGH4R2N2skZ9vRBWhxoGYLi9xdbHR6syY/Fwc
	 AF8uoG5lnFphQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5001C49EA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172269035363.26657.5255536777575038930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b55547d77b4259850e9b7887bf88445d8ef8964cdfee44cbd6b38a511aac4076
Date: Sat, 03 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722690353
