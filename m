Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25019139E
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725680754; cv=none; b=R0ACL4+0ZulcUPhlOHktRs2S19h1K4BpAEKbgXlvI5JtTewGz7JBX45HQwLJB1/8HFt5Zsu0NtuhKOf5ShRcLvehHGFWxBBM3V7xhCAv/bOCAAJ3VEmnxUirecmfregcqdB1r7U/UAsvRkn2JGkPnA0UNDAkdD/q8Wbn6uUkylM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725680754; c=relaxed/simple;
	bh=Z9L53+0kVTUoZfMkL9SupKYiQlRuHq0TPVA7Nwc2TLo=;
	h=To:Subject:From:Message-Id:Date; b=TDRIT/nwoUgq7j5MphS3T1qDNFccpziVbqejPhB3VKWr6SP+/Z0cTHMbJPE12w+FQ4mmOohay896XITCgs63FNEgnMcLQerjUoYnLfU+ADuzqI5IU6vi+UjoVhhLixz1fbsfOGS8y1uedqziCPgIRghgt0yM+F5HGAYAjSfFDnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4xxI0eq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4xxI0eq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BFBC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725680753;
	bh=Z9L53+0kVTUoZfMkL9SupKYiQlRuHq0TPVA7Nwc2TLo=;
	h=To:Subject:From:Date:From;
	b=T4xxI0eqaPG6XbHjPPG3nyt//ke/7B9l486ZNnnKBrLDbYd2oP2O0GL08uzfGuxR6
	 NH3/OMDI7DqMxOHfY7XcMwN3IwNrzdYeV14adKryCvfVPAFM5iayKvdrAzDgPJ4cLI
	 TpHH+4Vwoi3PRaw+PnVqVIdwx2BIn+k1ldK3qNXFLPJrAl9gBlY6vaPh7zDhyTnMmv
	 M58d4t2fLl7HSXpUG5229/KIu/qbxqUONJGsabZEnK5p5hKj8d+zXsL1RQMiNG27TD
	 qJYe+7O3R6iAA4R7VvMhXwx2mjkXnckdFcqfEJYUZo/4Az43m9+fk1AbNtfLYuU2Pr
	 4SMhBdRCT8BJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95763CD4846
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172568075357.7391.6464081601680850780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768aaf7dca85be8ee80882a992206393f0ec2ccf29fdcbd507f7bf8c10194905
Date: Sat, 07 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725680753
