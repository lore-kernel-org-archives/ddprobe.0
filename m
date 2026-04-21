Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D2E30F7F2
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776794854; cv=none; b=o+QnJzXJStHoNAQ+uefIDfPKP3h4xYCFcIPJqijFN40/CTH7CMDE60RuXQRkdva//3WXJsxuekdwjGcYn2r09SArlPqB3mcFqb9ZmzaWxRDGRe4wxNxl8Ctbjtzsy4SLQxgIRLK1JFExyZYrrpyU5iVQCFUk+/52FAfvRMLeR7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776794854; c=relaxed/simple;
	bh=mvrfyC+EhIwQZUTepbur/iNM92BmNMN6jSxWUACBcNg=;
	h=To:Subject:From:Message-Id:Date; b=swKZdO+5r1zJatGbPZ3/yGPX34ExHlVOiRMbFjkApuIyBimqNhGzOMagBF1HF273AecTUM0ILeFU95Sfn9HFpxb+gIhw+6W6n2C6dU1P4Gj0Tb0JyGq5HRHYOOgychtOxFLlTSfL4DmH8QT07phKoVV3Z7QxROf9owHTI4nEx7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVx7erUM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVx7erUM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80A9C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776794853;
	bh=mvrfyC+EhIwQZUTepbur/iNM92BmNMN6jSxWUACBcNg=;
	h=To:Subject:From:Date:From;
	b=hVx7erUM+mlqrwUbTfyTS/5Ye3QFTXy9ua6nokmh27zaH0/VS59RhpFqpoFLDFrLg
	 sKeTd2kgi0ki34ktieNKPDhyH+1+EsWPOT6TNlVQOipCryL5sMt78Wzs3yJBJl8mQz
	 Acj+eCoUc4AF87KfGXm2EfP+MZSDly/qehdGUzyh6gubxjngjU7RGYzUZTuQz2gwOS
	 BlV1J/Z6H0efQ+0pHu/TvFoifxzvRXrB3aC6+NyGTmn4gzG1b/ibGammYw/DicBdLe
	 gHxItnfzZwGrQIHdK3sgmTla1cryHWjDNQRt5grMjqeCnchnI+mbNmklpZ3AnNIDGX
	 JLZnYHPfHGhrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3FF94CA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679485368.27259.10757810851669812080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b178118ab7fc873ddc4fd0ae8b9d8729d2e7c484bf04d4e30d664d203dcf082
Date: Tue, 21 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776794853
