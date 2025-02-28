Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389351C5D57
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740724134; cv=none; b=ME64GfK5Il7/LCvStQI09waUU9tvnelMyjXtuFZ3AS1AsTCqJXiglTzNhfLD72HNYj4Xw7rg+Cj8v+r21FQO6foyFErLiRFmy/DkZCNQejuiP7Th8vN285QgZA2w/0L4cwwimyZVPCO+aVcLzXpWZTbj/eGkfNAkpA1gg9yvhUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740724134; c=relaxed/simple;
	bh=EvelnUMNXkW1VuJDyaegmYiGtLG+hoxFE502PYM3Qio=;
	h=To:Subject:From:Message-Id:Date; b=o61O5S50n1OwE0+r9H7ZIahxGkFRvmvitOW78GsKsWhOPgXcMoKly35TB/4M6Z/lIonnDPYYxi029lPgcb15yyNk6KWYpTwoHYKp7JmhocvalxUITOWE3EYWOFbPqR/EX6PayIT+RPrk8qAP32NeKMafPQhzOTBGWWqyfbOMuj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKy5/8fI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKy5/8fI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD018C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740724133;
	bh=EvelnUMNXkW1VuJDyaegmYiGtLG+hoxFE502PYM3Qio=;
	h=To:Subject:From:Date:From;
	b=pKy5/8fImdmbUyHd26yxV7WpiiRGRXee538gCsYAxF+YQuID1ZGjVNlkjHI/giuBN
	 6oBBQPH6n6rZCYJrgdYgolOHazyTAC7E+THjarjqIuaj9xJ94MGBgfHvTgmoLTm33Q
	 VRuPyudm6d1OagUUbkyONxYewz7Z/mGPnBdH1s3k7JAKqQqitc7wScUSII8F8jti8f
	 Eugnl5w17hB4LVEndmn6+Z6DErQPeXUY6625I/6QUdkflSBq6gIWwBX/hA33Ravnor
	 qKeuxSNMojZbIvQ2ffZO0DfG0vif/UrWCllvN3nxweBMhSHCUpkkmGS5ZOAekKt9N9
	 WkvWf2WH63HMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B64C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174072413357.28608.7842065032476272050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3a909f0419ab7de751bc22391be7bbe4d2d809863c764d64f5dda32c5ec096
Date: Fri, 28 Feb 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740724133
