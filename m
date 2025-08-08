Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC6B1D54EE
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754625594; cv=none; b=p2nJWsGMZWa0Pn/PlSzF5ZHXpX04Zhxbzj2R2AzaXAEWK/Ur+QVdL+CSlPGztLb/FNS67uHzKhKIVxlTLAX2TCC1TPnBmta1zchkAcKqlstq1zJTrugHkR0zfhklt1ugeyP9R+YKW2dLdvNYQDNPOAeqZY1mHuuBFyU2mjyxGv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754625594; c=relaxed/simple;
	bh=Qcl1XTXFuIFLYgoLWlZrJGpgO+8Qj34ETZGmSAfGsx0=;
	h=To:Subject:From:Message-Id:Date; b=stV3gkN7u4EzFCxnQ7n0ZzeNXkCCiAXDmPT6/ezgRkjavZJCpm8SVO9xUGu48HsmfGfoeLD/c8oI54c+LJ8eaHGDoUY3zA35ZDelO4NvUAyL/McN7XuNtZYyYNMVOOR2VskGIG+CwfrPV2qstAvBSKjiZDt7vVgy82GK+EIwhXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ulc5iAVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ulc5iAVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFC0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754625593;
	bh=Qcl1XTXFuIFLYgoLWlZrJGpgO+8Qj34ETZGmSAfGsx0=;
	h=To:Subject:From:Date:From;
	b=Ulc5iAVTwbekvVRzuz8RnQvUMUhTNKEiQRYU1eRq1XCwRMParaEIxR19GrkB5mSuo
	 JG7CjLK8Pt/lUVzpPvW50+8zrY0Z0zYGk2Y1qbLljPnQPOZHtNWPBA165Q2wb8Azv/
	 6xEOHVgd6kvgVVqpVCrbmBj+OCdq+kysxsTYDlfZkmE0r6Zz7Q3dwu1bVoa3zOl/+f
	 wPdGP9248kUWxDSo5s1uSXgBhpJs4F82d9nmyuU+TT9XJC9hCOMD47qzE2iLKPrnIR
	 ZvAM7CRlNeLg9R6mL74mS4dA4e357x6u4sAT+Qxuni+xXAEvEY5nVGn5xkrp5Gq78t
	 8nnN+nAduksOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F182C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462559357.29004.16456892260276068861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd9b19d1c6a7f116b63c511f115265644acc1f8907b91769af946a7ef5f46b4
Date: Fri, 08 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754625593
