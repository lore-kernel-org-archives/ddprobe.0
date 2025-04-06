Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8521487F6
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743971994; cv=none; b=kJBziYXEg1mFh84LewJuYHBybKQUA4l8r49RqfFudd9oIJ353PPUbQiCfQunjApiHIP8IkeqPA/TLDLm8Ip2t2q2A6vmtMCzZ/kksymtgNL/tzOt9i5XR6UdqSfJnXXf8tKGl5JURBmZiUMrzzc4aXJZpQIdE4l7OqRs+WFQ9X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743971994; c=relaxed/simple;
	bh=SubHsiaLVA2VB/g84KrJxb/IKYbBA8cD4RbjSUXJc5g=;
	h=To:Subject:From:Message-Id:Date; b=eyTqYvgLYnFurAqL8D2LWthp2IIyzSVCqTOLUWfcayhsCTh1yQhzp2vgq8fPWaRvZ2RhLjb3NsGXS5uSKZGQ5jTSuGjUDbDlNZNCGroD56PmidFU3PzIdvc7/7xJge/uYKsYXtJNtWaNvKUa1AWc+lypuzvUea3G0D1URHHjOEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXLsZ4SE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXLsZ4SE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EF5C4CEE8
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743971993;
	bh=SubHsiaLVA2VB/g84KrJxb/IKYbBA8cD4RbjSUXJc5g=;
	h=To:Subject:From:Date:From;
	b=VXLsZ4SEs+OyIbwKBdZg+aHrSprtMFZhPdOytu684S3kASX/asfXiEvelFsTGGoY5
	 fpVyu2t6Y76reGwD8wNJ4H3DDStlpk/GUlcsj8ySmHGEvP/JU2O8e9wRyrq1oBhNz3
	 t7JDH09J7AhfiJXt5g68p1BCYudGIFcTe0pDNbP0tZrqdIiZqKZJ2thWY/oKJI+Sas
	 HLv/gUjyIEjy2V9eYDHG2VyCG7a1ZvFxXTc/fJTbaMpKRLptSdCI4rwc7lVGmagBvX
	 tAaVhUa+BL30DBPXLD/U8LBXR6maXuz1VywmpeNRE8GW0xsTfqPJ3bcUwySTpvEONo
	 raLJGvOdHScDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1110C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397199364.24974.13639036524661119799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c5921f36d820c9cf5a894fadd1054bbc5408d52e11e933cef2661cdc6fa920
Date: Sun, 06 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743971993
