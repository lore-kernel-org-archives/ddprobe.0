Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A190305660
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791660034; cv=none; b=dFweySfKMZssSXoT0wXSfPyMqxdO+tNV0DAs9Ecf70P0Cwkomq0Y8cuMalO6bI2qrB4RXBBhwAVclJWQ7B//XjKSmSij9OIecWH2iMkXfkzyP1WrZv+OkDRBlepJ1WWmsET1t6bKlzSyyJj+TGOgzky2iZSKw54O6XlFEK+znA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791660034; c=relaxed/simple;
	bh=NlRRE7mysaBlkKgFMpLf9C2pt3ct2dp+aSxKSQnBd7w=;
	h=To:Subject:From:Message-Id:Date; b=bjkcZQ+7OzomgvmWbVWQiiipUbH1AgvAIgY83+b7RoSNBrzX9xgofBqL91Q+NcU7qTbVcspZciXdPoM+5OlfzpONxE/xyIgbS/9pd2YRykw4+7qSiNnIQPXUM2Gb5zVtfroO03CIIIMAcX8j/WmTEk76lBIDwW2cAcFWqR5Eh1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MURL2ybC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MURL2ybC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9047C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791660033;
	bh=NlRRE7mysaBlkKgFMpLf9C2pt3ct2dp+aSxKSQnBd7w=;
	h=To:Subject:From:Date:From;
	b=MURL2ybChPtYmBrN5pnmfk2gvqVa/VmhBtplia1Z34NLe6/yPy4nzoAlMlzxrzNAr
	 jjU8c0SqYZoEYdDOGijBcahn3Ge5Y8lXjtrsePJZdqryiDHj96vA5W4izxZI+stOZS
	 4cW++yBlPXyOGLXB7npS+3hfO8+rew5yGBSKOER/mZoohlqPLXyOfscVVinUKD3Zm3
	 OdBV+clSxAh/VZGA9qcayrrYay4dfnwDMLfsXz/260G40IbTPbkKNUysmcyJeoFGhe
	 XqoJkdF6ZeW7Iqt0ukTJRTEr5mqNzQ9FXh5NGVzHrOBPVTC2z2Vm323Vupy9SHAsUO
	 jYlCFgjt8VBQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B042ACA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166003368.14131.5506261044501101452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b42e9ea2fd96ab1533353dd8bca81083ea6e04fc9a75f7e43124da4a2a2d49f
Date: Sat, 10 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791660033
