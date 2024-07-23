Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55DB158A07
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721759754; cv=none; b=L6IApozFPo8++IqdlLaF5YypQsdrXitB1eWWfsFXcL41sw49muSpEgoQgt4tcDrKGk+uhZaJoo7EZ/qyeJpfUppI23jxf9jv4jBxNT7nmLR27zycP04XKKQUdIqqFaZjbY9jt/SQ+m+GFH0gHYStAjIj4QrKWE6mGjX9D+JolaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721759754; c=relaxed/simple;
	bh=UKa+ToFyzhugNCzw5LBmc3WU6s2Bw1+Cb17POQmnhVE=;
	h=To:Subject:From:Message-Id:Date; b=eyeWEGtDMfAqlahANb/+e8Sp5kPaoR1pgLIbpnedjFockWy5xItoWvtzFZnM6LR8t88Rjo44mx8FQBBO4QIoW8jy+722/VV3v+AynU9P96x1FZfCOBECxpemR5aHSq66JQkt5gDK5h9GbirS/TTQevMGQ/q1iJyWtNT7gVTmsWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWxZqmEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWxZqmEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71D2C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721759753;
	bh=UKa+ToFyzhugNCzw5LBmc3WU6s2Bw1+Cb17POQmnhVE=;
	h=To:Subject:From:Date:From;
	b=cWxZqmEXjdKIlbsx4pllDpxcRj/8X3CuwGWsMXOGXc7mGDbot5ZnIvTSI95VnjQbC
	 tcDgAXMn+3Bqy7DyTtgu4aPfYUEFFkY8bjKxGblX5KLgVHrV37KfWYY2Rhn8YJnQgY
	 UoF7uUbfBVJVMhjLDrIaRzlB25Cyf818xDVBZ4AWsoyFrhfSZTuYIhFp7INLJZK4v5
	 6OIqPVYeHdYXHo23rWAWckAnRM7u5iIz2O3wlJw2kSbTbRJDgscIcmEHziIKxv8iKr
	 4zEnfHgFKsohnvKvzqp3CcPDzZ8tYCYwpNGL99kwmRP2LSP974l3gtADpNsql084tQ
	 Jrdf/UdzrjG7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB138C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175975368.9290.9321252741605909960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b53c5424f798f6799b54031777022ff4acbb7747a91380e80e0707213fd2357d
Date: Tue, 23 Jul 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721759753
