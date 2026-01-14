Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA11284B37
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768362834; cv=none; b=DY9RzoiJ3A1G9yzQRdbdkivXUGX+497BO/vwDFUosWcLTxTNCx31vAMKoZiG8kVvuo5nLUF0LV+g1oBvhvyyMPhZqdmw9AGISSnfzOQrpTiraBbewG0vINVwcn/XvgbNnZ05RVk5DUcBryZgiK60CJ4DSDZur8E3tMgzh/P6Rpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768362834; c=relaxed/simple;
	bh=UZVUY3wmWpHSxv056OZ2VHKCrVNr25SJCn78C6iAmBs=;
	h=To:Subject:From:Message-Id:Date; b=HsofeTuUBzZ2UkiIEFkElwnlTGFjxYMmRPtIL2GIC7CiyOHggbPkEjnO7lh1DbeIEdh0fT7bkaLI0cp1ZmrFkvSfNrmKfnyPRLSAb0E6ERyuKhQTmKuspTu1HqA1aHojCbAhW6hOp2CO31mU+SCCTMSR5snN4nPgu59buYViAVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWCqdpP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWCqdpP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E1AC19422
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768362833;
	bh=UZVUY3wmWpHSxv056OZ2VHKCrVNr25SJCn78C6iAmBs=;
	h=To:Subject:From:Date:From;
	b=aWCqdpP4QdXf1r5epxZAxzaJYASybzRCyMEN+/59835KcuiTPfhHorK0PqoTrskf/
	 qxGbS4x6AKlBgh93qdRn+xTx3WaRTJ8Dh6lb6Ome9kItXIHoLbq8m0QS3tFyJkwF2m
	 7qUqbYlGpGh3UEV0rlWl4GYned8BPgw+a+Y5Fha7Ya4IXq1111m/FeqUFO4JUZVcAf
	 3YUkx7+SyP3Al9vhZVlv9aTaM3bPJ5R4Sg6ebUSyfkZmy0crbBxvZNZt/0EAGgTPKk
	 Y/IT9vVA8LnMHs+5IJ4sEhOKVqmCRG0s3fMfKZU2V2AHbektCgZNHEF2QocIjn+Odv
	 Ic6BJIOczRWzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75CD31A0C
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836283358.22458.14451981833546705250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdc104bca94c99ee564b4557a42c68b0332c87df8d4e3011c6b82c685fe6901e
Date: Wed, 14 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768362833
