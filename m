Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC25130E39
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708104497; cv=none; b=a21Fix+e+/l9ldGJFIOS9LpDdzJfSJabOrihZ3NnVV9PG8BW/vdPj/dNCDduIwMNiQD5eyx3kLuW8dfxNE46Jh5zE9t/atBETsk6RlClPyj4j6uxv3fvOEc4cqNSWFXQ7hgjYb5zrR+DuGBT42a8G9wIIhZ3s2kGwV5anzE1bfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708104497; c=relaxed/simple;
	bh=oD5lKHPNtdxyX1xOJUQrHhmqeatjaU3Ezf5CwUb0IUM=;
	h=To:Subject:From:Message-Id:Date; b=pAQwxCmFCAubXIceH8+6xPxBa99MMhyfgIYFVE6GtNF5nuiQJwZ6MYe+kePOY2kZTF0Na4zoAm+Hg+DuG2OiZpZ7nzp4ZGU8olbpzardEcFex/8G8WhGEg/qYxiZRMOv3t3u9NtInhSqUqQ0R1BOLEqYBORKVkvycFOcyZGxi+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5IXLUva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5IXLUva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4A7C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708104496;
	bh=oD5lKHPNtdxyX1xOJUQrHhmqeatjaU3Ezf5CwUb0IUM=;
	h=To:Subject:From:Date:From;
	b=G5IXLUvaGXfqVrJ5+Usa4z2W3J1Ejv3voFxTvpIiZdUPuyFhmLRZ+jY1YBoPskyu1
	 i5rqZdY6p3FSmGxPbB8LSBnVnDe8suUNa1KKpHSINiw9pVx7qj9hvJItbMijzPVfo+
	 5CAAFTOE1yAfQIFqaeMX5eLAtUu2f5X80+B6/UqpxgTR6Vt4NQZel8fJGCo4+9rzvJ
	 AhUPBUij7+bbA8ul8aYvJKU1jxjQYV2zW/4BJW7RGpEFfgF9Ry0AmlLgmooKCHtTNg
	 w7Q1kLvj7RGZW1Zr+nmAKQslkvkkNuCNF/b6bV3eYgbnWPimEo8TU5KQL4cr9vs92g
	 ELqL2gH5mcynA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673B8C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170810449640.1119.10452865993302579398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019ba4fc8b591836625f77989865959ec2527ed9b5a7d8fe200c1b50214c5d15
Date: Fri, 16 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708104496
