Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326B03932E6
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791742834; cv=none; b=qVN6pK+Tx306SV7xtNQDWQ6WuazYJwhs9hiBxnWvxyGWYsGNL8SUKRgAjPJHOG3268Mfi2JDwx8pZTOTCbiwtz/HQXbJRS2ZOdYMoRittfezRNT7nOZ/9qu98sxWL781xvjY1/nnsUPdr/ML6pEau5vJNx6fhEkJ6+Egki1xDpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791742834; c=relaxed/simple;
	bh=QukQswfsWKaqo2P+lSQGsW0EzmOC14ZtZyZDa15OdlU=;
	h=To:Subject:From:Message-Id:Date; b=qj6Eyizp++90hpyRihEK3XirR/gkdvb4/uXm/kGXG22iqeZoPeo0ErA9cnriS9k59tS59O5uBUgQSuGD8Kr/qW6iNST9em5/5xVDZvwVOIBqx1DNidBo/+cwLqDPyZsiVsMAA3b0cuvI8R7VWcUfNYTdfr4l+GSR1I52D72mxZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulRdUkFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulRdUkFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FF2C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791742833;
	bh=QukQswfsWKaqo2P+lSQGsW0EzmOC14ZtZyZDa15OdlU=;
	h=To:Subject:From:Date:From;
	b=ulRdUkFBOqbu+wMKWOLFZXlchCsVbwJc5IjeQuUGZEjI+Xb4S5HUz/cFfE2p59cK9
	 /U1tE6pELV/fiuyoqcPg8HGT4TqJU4q9iR1iH/a44XapxVa2jOOZkndGdAxpbobwo2
	 TBgE5bVRn9FVC8SvXwqPC9Yt940RuwJsdu6h7h3V6FbDUq3V493p8jQedK+xuvqoP1
	 4n7IEjDuOp7aeeMUnngsraoMhGKACHzkpHIQ8MJIfqtOP/bG4pxaPi5pDD5UZiIYaC
	 KUaiFL7KPAiXnrzGLWqdzGaXVOwfIfFX3nW9GUc5YYAiH6YZSLKTAVrZ8aMqViRbzR
	 bQnxsU655amBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0412CA9ECF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174283368.10118.7706102822983492660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590a297d6e106717e4881fa65b40f87f815d82e1aabe48f6d2e1c4c6bcd35fc5
Date: Sun, 11 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791742833
