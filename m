Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2293A1E9E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766201634; cv=none; b=N20YnErv3mZbkYLVSkadALayIk7hLqNOJ9i/vOjiifhTy3O/UEOOqttn7tENc088ve/DjV110mgA71XtPDXJStICxPDLNsDS5QpbHtK433ZoaJF3PxrJwfRievfTFXOivIAdQnxE/0sKK6G15QSs97HUSbaoK+NXiXrZPDk4xgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766201634; c=relaxed/simple;
	bh=pAW9TFwp4OuMyOeZFGiIFVTEs4U3Ch+19PLrMh21se8=;
	h=To:Subject:From:Message-Id:Date; b=bZ7gDGuaaxVLxXcMrZTzKn1aNUSzU6p1g1OlzdDp2HHxOEnN1GGMs+1ZdXY3C0ozmpjKW2fwZPjrFnYPosn4qMYgD8jkIbnQnVEZf/VEGZ7kcoP2WPFqJ/Pvqwjdwww+gsJ3BC1jOz/17pUqqyzlucOp+E1pyKLiKPNRxfY2DJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8ICcS2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8ICcS2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2655C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766201633;
	bh=pAW9TFwp4OuMyOeZFGiIFVTEs4U3Ch+19PLrMh21se8=;
	h=To:Subject:From:Date:From;
	b=V8ICcS2NfavjQpITBcESBwFexaDM8d8blZ0PN9CDdlvJGw9bDRxL7K83lUQC0xXJV
	 OrxEM59OvW01eX8KomCNHSXYFdtJBCNYkleXLSmanXf/S3VIrGF0ZLgsH/q0CvUbzZ
	 Mwbce/EPJmQCmlytltO9ZbZY+4dkHyRmPG9Xzz4hpUxdgrtzR/fvpyK2ool5NkrtNJ
	 obkfz25XeXMkLzJFIrCPAxG1F3Swm9E/v4ySdhCm14eH8swL6W3hb/VqCaqp5DE/Nq
	 6Y6xBovIqesUJg/Y1n08NY0FRBelHKrQQz7HbW6Vn4g7pMDHDpD/fMei1YP4jUT952
	 7TEqMTAKi9vyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905ECE668B1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620163358.13762.9032214379505448636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4844507d1f50e4df569f787cfa1bec2497a8fd51a3595c0aa116d0ae00188206
Date: Sat, 20 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766201633
