Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BA628FD
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746932394; cv=none; b=dK5whjcqquNsMBe4bRowUs+uDCchWRIU0I+IE7X8LZ+4CbMrBFMS917oKYK7QYfp8aj9jMZuW+voSomG6cvgCnrLFi+j/ZbkmEhONfRTnjGw/2lVIDvdJNevrqx54nVZFD0QTYepdGRuKT2O5XRmfb92NOwN5AIlrOPRKCRi18k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746932394; c=relaxed/simple;
	bh=6jES6D7SJjn1FKXnekPa9Si6U/Z/VWurJnG1aWH707k=;
	h=To:Subject:From:Message-Id:Date; b=fkCs+qTUu9p0POM4x/CXwahlR7TlM0DfDL/AHHOKJMu0y53gxlXL5CV39jFgTQpDWSiGGFNbDiuNzk0YFp+GsbUn+zO2O9ujORdFs0yjh0ezPUyinOilsmWa3Ajxcd9E7dfVL6GLpv1j2lhETz2pifhaziXUmyMKIvjlToGArOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPKvVUiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPKvVUiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C59C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746932393;
	bh=6jES6D7SJjn1FKXnekPa9Si6U/Z/VWurJnG1aWH707k=;
	h=To:Subject:From:Date:From;
	b=EPKvVUiEgTBeMVCs0Qftth9ncAc65iOUq5AmoFfvHwfqbdbeS0w5HkyZ/LZwl/jdS
	 srkaOHtug4Zo9pfX+T1qhVwcXyg5CM9wdjFEDRnhtFjnbpxj/hPh1IVUmGms031/B1
	 AysmJtU3JqP9cGt9+HBe1yUu0Wx8AwNSf7LPKZQw9CVyLaV0X7HMa3EvWE8BX6wsb5
	 f+/mYx/gIWsbZ6jrxbpEuZLwi6DL3YVAnQPSeAd+Pez2AAVCIgmg5Fx7/YMe1FxAPO
	 MJVuGkbi+EKYoYsBJf8gkfqtWVjxIXlR820TuQIuE4HqfjZQ3jLWUp/beYasPb96b+
	 M/1xnFB6h2Eyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF1C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693239358.31381.17520313761171580008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c1366156387bca07254e870499d5c827d7c809f8d0261a75bfdf2ff6e61188
Date: Sun, 11 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746932393
