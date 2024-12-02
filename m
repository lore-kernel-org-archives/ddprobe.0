Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FB217C2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733111754; cv=none; b=KCNBqAbvWsF3SW6INWXDvGWRaM9xbW2NfZZDr1pWVBY/AH4z/CdnE/72/WaKMu1xISCAaAuki6qa11eYMOWSxs4hk2Sbjz6gRifR+mCuPc7e3VTZR8dUCozcx0Y9A4MSMHtzNSD+8L3qrid+uaFKu+mbbHQzx5t8b27+ozyhBZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733111754; c=relaxed/simple;
	bh=dGW+G5QQ/yXd7cG2f/Tiv1THCt/4p81TCOczy5xJAic=;
	h=To:Subject:From:Message-Id:Date; b=smeAKbOD4adTqI2Ap48/VBYaQy27C5YKSm2NPqKDgzaOOr8x+i5dW78Nc21EvVNILRDlc+eHQZ5GiY/DLSo+02LKrli3zrh8QQlU6ejvmSB29+ibW1HWzLs+UMYp9HB19v+19xPtPnF7yfxxfnj/cu9keKF8VjAP4MVa+NSxC6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhCUq8FF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhCUq8FF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3414C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733111753;
	bh=dGW+G5QQ/yXd7cG2f/Tiv1THCt/4p81TCOczy5xJAic=;
	h=To:Subject:From:Date:From;
	b=QhCUq8FF5CkjTTp/deoqGEugqw9yRarqwW6JrNOIBSXQSRylpPaSAhnACs9FK4vw2
	 R/AjMIhz1x8GybPEFQcGPDl6SDwB8pkPIIE61q2SZCy19x4xGnGnZOb1BlaOOMo0Yp
	 aDDCBXGq2v+yCTo9DvJkRjY+41FoGGXs2Atp3piCZmxTjQEV47GZqgHzKl0wbWfyml
	 Zg7+2GIoyBmCs9eOKiUM25Dc4nNUk/p7U4KWpByf5SgXKSWhJi+GfkMHXLYJOZQ8Qg
	 +e1jwAaQYSaejy5rE3D08kqbLIVq7cbHEuYipi62pu73cuOTLeRhpWBBs8GG5ug7TF
	 jKFJ9DQpEuN+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC4DD49795
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173311175360.5114.11789252388006806066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f744479824c14ebeefe8946e2300043602c676d669c39225060f1c978fce782
Date: Mon, 02 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733111753
