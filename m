Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62112DE6F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768617834; cv=none; b=rOooSiNRu7DifpEILQ+5Ztw8aC/3tfjfe10xhKYOloY2e8iFUWcbok3b6s51N1+yzYe4UCsrzEGveTjv+1vEgrtr81DyY89MVwxV6NJmgDN4Tdez+ynR6kisg9wO3EuYxmsYktVMw+jrKpgtjlYLo/xPFDbo2jBnV9MOT9t1xbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768617834; c=relaxed/simple;
	bh=fNnt7vvTM4Mb2aj3vYWUbiAwNn4EBBOGcBXE+qJo8+o=;
	h=To:Subject:From:Message-Id:Date; b=t86DgcmdoMicE5Lgq90kqPLGQ7K5YDuQ/fXDcCQCEbGbdnHuqbskniEoRqYWst7NUvkgoy+7fgiiMOI3Gn0FawWUIOW0+YjpO2ezpkCU3FCp/8mwPREkX5WK1L/9NOZmrWpdxg8QEsluydz53aexYwtsQxjtDdfI4djltZqiElw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ie2AwTBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ie2AwTBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E39CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768617833;
	bh=fNnt7vvTM4Mb2aj3vYWUbiAwNn4EBBOGcBXE+qJo8+o=;
	h=To:Subject:From:Date:From;
	b=Ie2AwTBNho47B4R5AaMuTwztR7SsmIVkWjvKMQ+aSlV9MTf7StvRrryaqS6AHEPeU
	 +pssioaT/lAgMJlWRzpF9F5J6cNit9RziIbZxpsoXch3D8W8BSk9w8lwnJ1fdvIHXF
	 OI27H2W8ryyqGp2cPrHEZ+su9jaZ0gWnsKTZFNcXuLTQmfeHxftKchkAmUG3MnKTXu
	 CxXZR8cPslduZtUt7paccH5Lyj7L5teJjtkJ4fVB47/y+dFhen+GhuDXW6RxAYE/28
	 vweKAo1ob0+qF4fHHvc2m4dakgrXLWqEkMFGh/F57ubXVvbDUcJHbr7b6obV3Y8Q0v
	 nftiQQVw/raZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E9C98303
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861783358.18672.5134491664980733420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2349492be0c0d85298466e4216972b21216439d3ab8c6859b3267bc212eb5f
Date: Sat, 17 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768617833
