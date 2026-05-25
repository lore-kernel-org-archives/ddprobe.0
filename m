Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA1E8462
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779674554; cv=none; b=nbhDxnfJrBpL6brQpgUeHgOAeiKeEomSh8omKX45Oz2moiQn0x9Mv5NCVnHF9ikH2SGwAD748+X2oi5C3RefbQi3n2CFjtHTQJM3jC8BayB7/vwdYmvtwPuTNW1FPC1J56RpvsiVa6ohgWQvFCD/nswPoU+3yJieXoB/f+3qDCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779674554; c=relaxed/simple;
	bh=Ztq88y4hh53UXJfA90qzOTVmisFEwI8oD9EQw/8D1nE=;
	h=To:Subject:From:Message-Id:Date; b=VCC+RFkdIKlXcM0Dak+czpOWUXgzWlvGEXUqe/sAgicHKvPt1W0Nozkj57hr+M6JV9IbTunErP0h58YfvuT6Rk5gsL42ktcyxc9vm2gpe7ySbFQdiE0Ry6+yyzqhFCrj7LJ5NF1GrzW/wnWF4hPQUaR/yM8RA4jAcjxq7KJzTEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diYD6rRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diYD6rRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C85A7C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779674553;
	bh=Ztq88y4hh53UXJfA90qzOTVmisFEwI8oD9EQw/8D1nE=;
	h=To:Subject:From:Date:From;
	b=diYD6rRv03/7PIEIPz+LozN8WBJLWJLbLWVjNLYwWoNcPrbRdFJAnCMJHJUAG6QeC
	 qNhnkodPF2MwP+M6dcLprZFUA99fbAKCs7ESyxMJIVc2UwI+F/mxcXthGWs9zsA1PV
	 /AlOGHgC/1XCndSEYey7DKvdm/Gt6xLa7LzcIirWjPnL/KzsHo5t88DVxBABK4Iwy2
	 c79oVU40mdRUggvBU3nsV72yXz5fSQNKwDpO8dEcBQpEKxWrX6K7y+XLu+Pxxk4gK7
	 xInPNu8mDwuZE67EuUO4a11Hen/dhHYcVWvi9SU3hu53w/l3IMwT4/tO7UYtOSba8W
	 INVuppE39qpfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB4CCD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967455368.8907.7202313166233367917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfcf0ce53e6330095bbb488eb9f4c46c615b1e73f4e3380858e3fd4b6d7974d
Date: Mon, 25 May 2026 02:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779674553
