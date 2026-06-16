Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFDA31B82B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781571994; cv=none; b=gfYN3OzVLDawLybdKqN29eo3bqvLaHNuzvigpCx3Lr0N3uwUN93ACpuszzV7TaXbS66PYwRFOa5VuLzHMqL0bvnhkJiXdZBXqQLLKhPri2no+VWQhY3F2A47ylqoP0XQi6rXlmdOOT3SfHe2sFat+4cCFSbjG2t6+dNFShkOwMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781571994; c=relaxed/simple;
	bh=3YIEDq7/lXBVMbEroJq4nCjBPIF2yYUFOpDN97DsusM=;
	h=To:Subject:From:Message-Id:Date; b=b7+LZKlXz4tn8KimxA/DupX+56cSTMhojiY5cBL8Ki7PXN/+GlLhsBsIL+OpHXpbhdsvImSLr1ToyPQPfwO1jpL6lqgXbOC5haVh+oc/1j7qxFp2tdcXmZbINbbkPszyZ6MbNHmk2c2mwXozXd3zv6YQUWe2Nz7xeO2OOJetnKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YnAlc3op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YnAlc3op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF71C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781571993;
	bh=3YIEDq7/lXBVMbEroJq4nCjBPIF2yYUFOpDN97DsusM=;
	h=To:Subject:From:Date:From;
	b=YnAlc3opquKz93p0WU3oiavU45bbTbY1Hd3meUdHAg8RTj1Z9WgPbpzq2njRmVmD8
	 lKYZ52iQluFzpDPOeyn5J9UOQtEmhzMj2h9mmwf9CSTiJxNF0Gdt7aGfj6Y1KTr81r
	 991HcIfi9poqU/e/g4hW94kdzK0TDzDBwGhATw7G4es8KY0b59A1tgJnPG1HfDxUNo
	 wuu3Apvs3pt6oYbuHBV6aJjZ+1zfdlfMDMx2MDfmUCERYNyuIcCjY31le8fl2D1v58
	 KjQdMuOBFuG9uxOirpP0gvOCNeI6YcdvQ3NgelahSSSI26ZEn2QT4YwX72PFnGL+YS
	 eVxUsDquY6pWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD2FCD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157199372.4163.13205628245814968198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0560cf08307fa176142e8dcd0e1bb46b0762528d34f810084c0d0e65fcee731
Date: Tue, 16 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781571993
