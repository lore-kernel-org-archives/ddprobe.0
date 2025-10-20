Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2295A2D9EDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760989194; cv=none; b=hDUTR7Qwj97Gyi05q2sYaCOlFwnyAeqDu0RaevEFgcn5cAS2EtDj884bWVcREJLofrEW55WwtjvtUeBrBrsnyMrEHM+fvV0oO04ZDpxYV20QFNPnTjmWyEk/mrhLFPJHz9t+2N7St8PXLG5iNgjhFzw0XYdPyqU07wHVMxo5W5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760989194; c=relaxed/simple;
	bh=QPzk5oMLsK5fhadWHDo9cLhsHQD0JRVH+evGidGo+xA=;
	h=To:Subject:From:Message-Id:Date; b=VfNGx0VEyZr42Nfs+jRd0N9sauiFUEv/UeN+ubXfiKL5k55uT74OGt5v54qGMZLm48FbOUEnlp7srObNLcuY4pXfP5CwTn0ZmqskYZB7nIs9xlLVnhZoZ1SxJ11hoKkaY5h3n6XMdIqdQUhzf3UqTL5GldX8+3FXmVfXFY8V8Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdDgxv2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdDgxv2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EDBC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760989193;
	bh=QPzk5oMLsK5fhadWHDo9cLhsHQD0JRVH+evGidGo+xA=;
	h=To:Subject:From:Date:From;
	b=IdDgxv2y8O449ZMBduZkYDnTCwaFLZKzLBAaJbGXwtnZLB5v8hBP641P5SZaNlQey
	 Td9WZg8Hd++nZVlKBjxpYlvNGCSzixz1ihDzlrHgZu7vqVsfKTAtn/QAkwTiKd+H4l
	 nBkOpuyCVg/teOGG/77sHguUuB1BKyjNKcIPMXlTX7zqNIsb2quycti25qiziPMCSx
	 2ShciIr+AAXgD9RGCEJxj+/5xw6M0EjqKfi0FGdSQtHDlFtdwSa0fsxK4sQD8cwmQD
	 NATbDJ+9TWKHBsJm0AnwFIPZ00//JKCgpmp0NC6rN5bS0vYBRiRyDeEJ6uRPwTfuJA
	 FX33MkCRXGrvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90744CCD1A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098919358.11592.14326988188817343339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82c1eaa15d055cb84c31ca7933f0b84583d0167e113f4a36e6c527148344a24a
Date: Mon, 20 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760989193
