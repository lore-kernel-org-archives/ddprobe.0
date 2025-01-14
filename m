Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A97C24022D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736840754; cv=none; b=B4A3pyF46W5k1yQng+zrhBZlYVupHwb+EniBk3fedJdxxcdmjWKwdBcrMzvArlc3fw8+zqx+BErxusW9IOLipNLR3hF7rlIBnTzVXvYYmxxQhyGWiqqjRQqt39YfeTGamu41b1i7X0XRipcdzEOla3j/6vP9YyZ5MRNPGPNAIeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736840754; c=relaxed/simple;
	bh=ct+lXwXuTDUDTFxLDeya9JQHXUP40aMRu8RedXYIXaM=;
	h=To:Subject:From:Message-Id:Date; b=PYPYv7BQT/MLejI8gP8uKGCYI14hkivG5L72Y5HPRoKoqeKfNB3cCEbJpTKqL8ZNRaBfrttcMWbAZOr+stzq2shZ+ZpIUj/RmnpRmd2XtwSF1AXyrRiZbpXeXkd1UJjYx780G0GyW6QEJ8FfCTyQ7wwpBTPWyYlTodzzRFsFC4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZOa668D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZOa668D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8812C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736840753;
	bh=ct+lXwXuTDUDTFxLDeya9JQHXUP40aMRu8RedXYIXaM=;
	h=To:Subject:From:Date:From;
	b=NZOa668D/DuF+HXnqcZOyNshxbQLCBReyssaeIb127BP/gB4CmrYJV6mzGV91DE/s
	 7JWDQ2wcAp3QLmfqtpznJIL7oq5RvuVX/eXI6/4MMKjXhRaPZKwdOcClIYenILjdqe
	 uHBkS2SklyipxgaF3lkI0piGnmBwb3my8YWDTyW1/E/UG0nSO2vGyRKEuDdpaUbBg+
	 FTbZbOzbmrwwpfzxN5B5IRBWF/7ScpK68A9BMaAsDk1qOz5NA2v9fgRhiNAEzmkX/7
	 VGTgnCIbsPEYTF0KA/BKJKBc00qzxFESlcxjl2ztQ4InYJ1cXhTd8vbOMKyH5Nan4z
	 Fpx1uXA6w6HVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F93E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684075365.28387.6564759976715141918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26522ee8e38b45e995ce879d40b6e883dd413b00c4113ac345658099a79dcff
Date: Tue, 14 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736840753
