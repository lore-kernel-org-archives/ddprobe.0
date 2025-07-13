Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296C917BA6
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752391794; cv=none; b=CK46wD6B2u/xXfaH63giEP9O6df8uAK5qeDUPKxo/tuExqil0lRhKG4Tk5tPGBOSWJfr/RGqcvxZczeH2CBiIwD6qtiWEh4CwFmb+daMWdK3fK5Q/5yM8acSnr9v3Q4Pb2hn4PLpm8wc6OHHBxUawTimaXaSQrVyaY+FZn1kLFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752391794; c=relaxed/simple;
	bh=qkg/nztz+RrnnZVio99ltmC9BZAxtraiToOKw1H/mYo=;
	h=To:Subject:From:Message-Id:Date; b=chR80hsTBfLCA5v3zgSh9fOJ7XhlJsFvgAmZ+SY0ttQQyEYuugKg+W/YIHI+xhvaZFkgjaoMCKmmw08Z3NNUg6PI8FJagFhiUUmdF8E+20x8ZcdNiaPRgicq9qBJFKvHCZfBh6rOGRCvT67vYqRMlbB1eEbQXW8cCjR4XXBRIG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbGiFAwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbGiFAwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E582C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752391793;
	bh=qkg/nztz+RrnnZVio99ltmC9BZAxtraiToOKw1H/mYo=;
	h=To:Subject:From:Date:From;
	b=qbGiFAwmXViyfTkF34+KBrtYj3MhVmXArWnyMHlYFx+1XO0YeuPLHotQ/uMM9fr95
	 R/oZe8R0fcCLOPYa8+fqh+C2dp5VBIBwbTYhkarlbCHSfZjOxSYWuymfKCx9JZnbKe
	 d1u51qu1tqVOPoPbP/+9EGFVysSBGiJN1r3Zf4BzOyghiy2zsGEdKwof1M0U5g0FXX
	 hwtsfpeVBHKy6BmFr74ueEAJYrn2V76RRbj7BRaedlyTyzALKeUX5mS9k0vCADakfi
	 RmGxrzs9neEZvXLvndfj0DIwA6jHReBOhvynGcIT67YFYWWX8CdHViQ9xlxZEbFxlv
	 3pjRB8xfeeMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92682C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239179358.30500.12524792271671899706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce513ecb3239f98510337baf5351b3c94d89743f42a38a6c38160d3011479a5
Date: Sun, 13 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752391793
