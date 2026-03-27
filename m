Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1991E3126B1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774578294; cv=none; b=EOiBTAQeipMSPNQ4E4nXPBLPd3bTB28ua3/K0MrUqPzu+qxqd9ZN0KO8qR6swP9oWMc15INASwyDmTKlXSMcp7ppCpHIx8K9vc727HCXG3CuttWev2+ex1ve1VRJCJjp4o8wLXMZbE192zbptztl9WC3s+x1OuUZIsZQvsqfr/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774578294; c=relaxed/simple;
	bh=bGQSbndpCbHH9tsdl+sf/hC0vi/ONFZEffSykfSLnRE=;
	h=To:Subject:From:Message-Id:Date; b=hABw9WfVdWswsJKjnWxmcYis8Wpilxy9Kahzg4XhosUMGD4urx6TXvwiTLVoHWFVNCYnT3uZw7Tk0VYUO3FDSiscOK3qzCsVezOluAA0Aa4f1tmRGXAFYjPQ1sBfqWklFhzFJWyloDyLwkwF7L2F9Uw7ZknppHqaAxHhyZbzlog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAuehKAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAuehKAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA763C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774578293;
	bh=bGQSbndpCbHH9tsdl+sf/hC0vi/ONFZEffSykfSLnRE=;
	h=To:Subject:From:Date:From;
	b=UAuehKAY57J+THxDasoq5l1CKRRTdWJr4Pz53TLL/kcSz/qRnI9KR8Oc/cz+pejXm
	 2ZaTOYLbG7LhBGwILJBEgyHLTXse72I21X6hyZY2RAfrMPnQwfURVmuRPmfIi26fLs
	 UDPyM1CvRet+crRwk8XxNdLMvLv4d67rFwvxNksvF5lOccNiFyMOZ3m52/AeG7774N
	 TmC04U0q4gsPk+WGTFDqa2pp0Go/YaSkEukcu/e32sf96fEODAUj0QfDhdUk2svdr6
	 +vwIHv7QVfaOAQLrVBv9Kz22j8rPgKPhfi09XWgVR9lQmqfVonR1qYDURxiZYtkrbV
	 wlURhDWYDlYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B0510A62E8
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457829361.22969.2915075069587289116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f57661134b10da6e2aa628b6bf1ceb9798a9a8def0fb22f5e90033c2ca35a97
Date: Fri, 27 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774578293
