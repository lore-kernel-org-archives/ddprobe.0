Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303AFB652
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760918994; cv=none; b=lISXjb3KqDEQrHrO1qJfaW5nF4L37L3PuxE1/TArZiVV81fSVVQjkR4vWI0fLS6tkUHBfwKt17FXZkYuot8OpqZiipfHPi+CHbir9n/pKjH+ocQE/JODSUF7ar7Y5KmDVb5Viz2iRfNagY6WcaGqGo7H2erz8ck0uW/e8zOLPhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760918994; c=relaxed/simple;
	bh=FlE3cgtWuKHTm59QRjYfFlTGoR5zF3kDoVBKteCgEZM=;
	h=To:Subject:From:Message-Id:Date; b=c4LZIzBg+0jvLzSDC+PFoKbwV1LQxJ2jdf1HMbK6Fxt2i8/m+zSQhd3zWqlrXicNuVE1msmkwzfq5rBB3VWxCC7unKPllJlj3JUwc7lROiuBrh4AZ2PW7vHHWdjpjmHXCl9LQbFMWPDXMVYODHJ2rVM/5izLBd83Wlfg3+S+DbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gP+Tegu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gP+Tegu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C92C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760918993;
	bh=FlE3cgtWuKHTm59QRjYfFlTGoR5zF3kDoVBKteCgEZM=;
	h=To:Subject:From:Date:From;
	b=gP+Tegu05bywykWb1XY6EIef1N+pOYN5NkCpiLXkgaRlg19w4k1oZatDuNKMmzlsG
	 b8DqrN5ksdnnpsacjnrTaabX+D52UXidyzyfI1r4nHgTIcMpAvigwj/3BeF1JeoQJx
	 Ib3I4KNy14F4Vhv7IMm4TiqUvMKbC54GvT9T6W/jrLFr4qOL7zTxgVnJeQtRCp/JWc
	 nU0ndjcqtpJ5e/euuS9QC+HeIJJy2xcmeOYzsUW1s8h+Gu/nvxw99aAuskcM5CNmIW
	 sgywoKGDabDfxoNc2++n2bPKJ3nwyGv3nAMBYL8Qjl/Sigmgcd9kriZ45aiyomPDd3
	 SlQNAfKDJOpww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92393CCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091899357.17006.17837498958781260446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6f7ebc8769cfe6e101bfc8140d46c1eb39d64543277a722c006fe450746794
Date: Mon, 20 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760918993
