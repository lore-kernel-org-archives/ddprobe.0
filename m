Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD85376E4
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712564297; cv=none; b=gSvZXSqDCJ87fGOme+MGO9mp+a9l8D+DdxMx16oM0OPvhNLpTEc7MbBdRumwPKdw+gGTn4LbcbQya5/rm/XzglHNOs2x1KyafPR4uPkgu7IqYPYDl2i9/alHThiyAs8HhOMymoBiDKSxkkdvOeOqYE173soTtpWmhIG5nNPNda4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712564297; c=relaxed/simple;
	bh=mQ2sbc7q8ahq/j/JlpDUCtZSybP6Djsz1YAe8gAK7Kk=;
	h=To:Subject:From:Message-Id:Date; b=AujimMn0nTg8nVeYeCbD0QLWrfucKQTufH0Dap+wekzHPoeqdUoST480vEzXzO42oSZlCEFanMeoC2CIgSVWGMFYs6q4NA91ueHd57XHX/1ZHD9ZXWs3PUrx9utLM8Z+bsrCx1uLoksabmkdqM8+QOAAohXcR3KvZJF5s/rDRdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsNR0zFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsNR0zFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7896AC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712564296;
	bh=mQ2sbc7q8ahq/j/JlpDUCtZSybP6Djsz1YAe8gAK7Kk=;
	h=To:Subject:From:Date:From;
	b=CsNR0zFhd+7kvF+0dnjnG9y50a61bXj6bxUsqIyud41WFo4CrcIoT9prVo3kcbq97
	 VDBJddl5t3jfpSRUuHT9fQ2Af2efeKt+vOT8sTy5SQg6XYIr7S3h5TmMdlPEeglzWF
	 JlMqmxCZ+Lu+yTyd3jTH3ZvtOi6lkSmwnHQxIXMYhrgGqrUrH0o5A5msMpIZr62eOu
	 2qC8nEnbvGxcirPpp/rxBb1Z5aFwXItlqxsSwvVfmDYDSGSQ7nOqGSpTBldnNkmstp
	 w8hgO8xEIyCysjL+o/QLbCndboiJxN4VfgGduEuJJpUWt5Nxv90ZqtelO89631AiKN
	 5sKT3yo+8r+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB4FCD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171256429643.26138.940763147854394800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d817199a4c904e1c44d3bd64e54b160efdf6d2dfa712f8fbef4fdb5ac98aaa9
Date: Mon, 08 Apr 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712564296
