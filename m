Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181D312C54D
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726310154; cv=none; b=sqimJx+FUWSgjJ2IrxjgwspK8QgvoEmKzEZrfLESaGCqWXoxAFdibDsTUalrxLGsmkW/rfgI1qo8Yceg+X8MiJc5whQoC+fJVS8AmfCD+wDXEEMlo1YYhYnBUhPSrWux1+pMSBZAAendKWxAvSEih3UByhWYK1t4joUvsMVLJs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726310154; c=relaxed/simple;
	bh=4vNyeCV+efuxLzs2+7rqxWQUWTzrbPmM/9rjSaUuRDw=;
	h=To:Subject:From:Message-Id:Date; b=D50HNDM0iMA/uPsKoV4Bp3vOfvMGQmpvpzeweJfcYAnVTMt15XlNp4WfnlyeyvJBeWYxxlFzt05f9dQS+OEmQL3S3kmwyiu2akl2lOqMezfyCrwsCG14OUtf5+1v5nRSn++4NypwrDkjjD2NnHoMulKe3hJIehTL2B0PlxL1tRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtvYpQwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtvYpQwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4D0C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726310153;
	bh=4vNyeCV+efuxLzs2+7rqxWQUWTzrbPmM/9rjSaUuRDw=;
	h=To:Subject:From:Date:From;
	b=rtvYpQwaMKhcAkcWkl922K1noMzehCVeW/O1vC4rU9Msnb3dgA0zT+QSMwOVRMuur
	 hZJHHfu9JhpkQ6rouVzIJ4vzJp442GzHzyKbcbN1IIKS4UKqpL4jugE71Bkjc4qMvu
	 22ceydHNXj+2orKL65hx7oRnoZbpheTw78I2ArclS77WkGomFDKpHTGFt8yTbcgHpU
	 DWTexFneyZJ3RKX3TuwPoFXVx8Kl0uYyKVutPy70eBFWzrN1wYNzLUNWo0q4uUov/d
	 LVirPD+gWGZlYTmWlZvDUSXHqvydvjN1pSPl6L94GenIF1H0qpk77/5MZb0d/+ZoU4
	 qcKtX0smzBIxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97366C02190
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172631015359.15967.8301587370247741611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5808d66fccb2e0836925b1590bf691e4d6bc1bc9d99033eef00ce5eb4ecc73f9
Date: Sat, 14 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726310153
