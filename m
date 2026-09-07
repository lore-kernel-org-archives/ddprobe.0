Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB5547604E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788783634; cv=none; b=YClBZhPG4cds0DU2DSysFoOs2rHTYba2covd3N5t0sFYwfnohzwzWJVgkqEmre/dVfQvZ9XlwlOssa2zqgPmVhM8bJBqrWF4zQ8ISPWFXjM8J3fX7W0WDaupDK3s4twAHK0caQGr8NZbCyVloFTEO279Jky02fc9/A3avp0OgkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788783634; c=relaxed/simple;
	bh=oIfyHx6cPK5xNZ/HcC0NrujR8N5GEWZN5tkQ0dtfgYA=;
	h=To:Subject:From:Message-Id:Date; b=Ekb/YLxD/Uo+vEj53qsRcPUkRl/4QbrVUNMGkmBn4pUlpCm1FXU48wMe5p0s71Yu5yMEbrNSlEbg0zcihFtFO0hcvmMFeWYup1hAnB1/e4OFYkcJOOU7BCpYDW9UTKHKjteofi2X7htZ+u15s2QdGpdX/a18fKRROaflMvyfYDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLmcQGjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLmcQGjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D471FC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788783633;
	bh=oIfyHx6cPK5xNZ/HcC0NrujR8N5GEWZN5tkQ0dtfgYA=;
	h=To:Subject:From:Date:From;
	b=sLmcQGjH8+5g4GDOWj2tVsCgpOKQo/OmwwgXdkTNefJzJ9G4J7XJ0nsUHvVRHDRGN
	 GUVajhC/U+R/xLS+QY3rWk59QwtW85oUrgazYUZKeZIZfbldgORihsOuVO61kXmMi0
	 zvQDOJriXUGOA4T3EnURRFVrSVwqjSNI3KsaVvzjbe9dC/1TrBhls7TpTXBJFA0MTk
	 8DhxV/AvaUd089msCefDstHoFi0f2ibOCeccheRHRmqlJsSkgO/W54db5hG2Uy5GMG
	 /dRDqiAHnKaW+8aIMole7sT4z4uNN2h4OwvIdhf14x7Q9m/ksDPwDHiFVgndfGPrlT
	 Y/pa9+fva+uTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CEFC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878363371.13255.16119665380891581736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a821bf37ee05621257427fe8c3e6938d73ca890eb215d537df3aa9dec913e7d1
Date: Mon, 07 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788783633
