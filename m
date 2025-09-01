Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C24E1DD877
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756733394; cv=none; b=MW2+sNG8qON0qg18WGYXrNeQ+QBu/bO60rZqToo80zdqhIgnJSfPXVThb18/KPJnCPCeLkNZPGGjK5ck+r14xsTvnMwNoVf1g+97CnWy2UGh4LCeQQfd5nSms7rcoxQNtOys4/6JSClsJtCFyzLPNPpBI09nPrzjKmr0QjRxJis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756733394; c=relaxed/simple;
	bh=rBMAWoNSn9mDil+0yN6eOAKF0xVAQfJEjb9GoSxWypc=;
	h=To:Subject:From:Message-Id:Date; b=RfA6xCBLuzDUj18cFKLH+wazte7dxez1B6STdgKeC8jstpvaYuRdQMW0LjCdc3r760Azg4p59Xej5cNh+FiQaeQ5wo7AxoKstkhsadvCox2As61QNHUy+toWx1KemyOsmnHnqexHZwofrtntx58W2MNkSbwqUsJkp1dsy/qeme4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTOdeVR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTOdeVR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756733393;
	bh=rBMAWoNSn9mDil+0yN6eOAKF0xVAQfJEjb9GoSxWypc=;
	h=To:Subject:From:Date:From;
	b=JTOdeVR2gPl+sEL94ipHwnpscts+Ll5ql27jSEu5h01XCZbGyAZa3xRye+VhmXy4o
	 Lry6xb5GqpMeSjESYKxY0qM9VPMTfepVNWoEjB3WAdxZVdHa5ZGqkxc7mlb0G0bQF/
	 aklJT5rdijLwfYhkU+RXUPPRIZo15Y4df+XLGkNK9WV/uKfE7Hy9OTD8TP4QmJCuob
	 LktY8J84gQt8atd3vbMUYBuRlsm9od7gPR1eiR9Y58iFPMynMtDqFAo6dGfLA3G49r
	 7V/y3aTwpQglPbTYlYV2UlRXBLtburEiGUp2QY6q6J8w9SzBsxS3+Ju/YW7BP54rZ1
	 KbOK0KUB8CfXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C0CA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673339358.3416.7550615671644447344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae017a6165b1d18654fdd134e3d1a11c86fd1f25b34d8c18a7cd206d1342e7a1
Date: Mon, 01 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756733393
