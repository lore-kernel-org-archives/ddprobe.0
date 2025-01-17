Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8B51C32
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737074154; cv=none; b=i1QHf42wcwbCqL3oe9WQ28BBg9JemVYtsQpYHWwstK35dVwzo0kU+Q8E9+xzH0DGmsdO1snq6rOMEvIQfIkgykUPo69eZEE0Qh4YSd6taxoJpjP72nruljSU5dj5KtE+xRu349QCJ861o5B6otVQ5/WY5Zy5dlmtLfclBCcgke0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737074154; c=relaxed/simple;
	bh=PBfHGETd5cxwGOgaAAs3RLQldznFxAUpHeR4rX/wXMk=;
	h=To:Subject:From:Message-Id:Date; b=R1I1j4hK06feTRic1/ZqCqvpFLz1nT5XDzXxCnOJPHAzWualrSdBSpfe9HqYIUup+f6xxDMkFBJOao9yumBhnpSZ1DL2JT3vbTF/hMLaY8RwSjgjwJuhO3dN73jDS8CqmoHni1XwmT6aJP7TlX26tMQIqZJpuA9GFilElw4VZag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWnSDTeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWnSDTeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2CEC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737074153;
	bh=PBfHGETd5cxwGOgaAAs3RLQldznFxAUpHeR4rX/wXMk=;
	h=To:Subject:From:Date:From;
	b=RWnSDTeHhc6Qh89xTGvSkf8Vc4x00MpkgDPEQzBZz+JqqUP+tlYURXuJnXRcYDuRI
	 WHche1Ku/ZBogsvqdKSJ/ss5MPoojgJI6mpNsv3/XXd5q1JTdKHFC2IPvhxfPXo9BD
	 yetrMj7ud0eSwzW0IGzKOexxz4/M/1tqN9K4OnoVgn6mJj5NIjAcipDq+NstBcXt6j
	 c0wMNn3tNM2uwc1+k9iXnNv5zS1k5zCrC7ocJ8mlwEMKpjHq5bltczDlOffak9VRXk
	 5KAxjh5eDuCaICOVlRsBW5ilBZ+F/J/BeJUe645nedeS+liUB9dQ78US+yAJkcyuWM
	 jqxWA4IM98keA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95986C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707415358.23960.15599916160607596765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bea37bf886866b838ae5f8aa42871118431b2f6013314008d8c20eb24022fea
Date: Fri, 17 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737074153
