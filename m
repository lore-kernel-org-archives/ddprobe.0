Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4197217583
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744538394; cv=none; b=qIvxmGF9R4DKg6Ppv3GAoIOekuNqf+lOo5UFEl+wvkp+ikweDK1D6qw+cQBws0gMPzOMwStMXisK5x+SmxRbbLrsJ3pQS840mAC/Lg9TS5z1zUXqKMQTQN5VXFNdwnoztnT6wSBEEZ8XrcYICWqsMAVqeuSvymfwKe9JlgH5g8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744538394; c=relaxed/simple;
	bh=zm7xI5fRTMEOUdnJrPDQ7ENodf7pqrDAnjDhi8SlSB0=;
	h=To:Subject:From:Message-Id:Date; b=Rpb33lpYCViAN39NQzsi0CFW/yoP487yc2uxUcjnuRGE26Nk2d97utaWTHZS97p75DfQiBbXbL7OdfXd1mu9NwmgTmojh4ACTQMJvlxAe+APYv2xZGacBLVTxOKq85dKbIYELWr9Nmt9xRBXh2FxFGpach7I42si2kZPzBZnFjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQWhzcJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQWhzcJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22AEC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744538393;
	bh=zm7xI5fRTMEOUdnJrPDQ7ENodf7pqrDAnjDhi8SlSB0=;
	h=To:Subject:From:Date:From;
	b=mQWhzcJjDBPTtzwkqXBu2Z5QYCyzzXoTNoILCQsIw3TWaqXb9uZzGzyhXTELpNegq
	 VExAsoiVf9kzB3rwmXxwKPmUaLf2d4JyUZqpfZJW2nrbEpSYp/qp7OYlqmQwhAmrh9
	 RRLTfyIyXXuRsMTo5JxwWFB4vEItSeoWtAfrvZmE4yVPAFtSKhSdO5g3uiwSPzqg1Q
	 lcv/OXZgqgZ6Kd7VE5I5LriUm89CisNbZMPUWPvSUp974YWGXKAcYUTEJpAXRxJaCB
	 UFC6QaXYf049xZujMxIG0vTSw+tACruzWrgvRKHnTJ4Pw9g5kjqOllMeP3C0O10TaI
	 KDeoq8ZnwFuFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA5EC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453839357.6521.18227008297687606460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ca5cd264ead7b516a83b7a33d493d681caa65cf4a8115d06cad4bca21d9b55
Date: Sun, 13 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744538393
