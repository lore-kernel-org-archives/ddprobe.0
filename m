Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26940149E17
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732895154; cv=none; b=P8F3NwD7NF7+zodNVuHDc/2raQz5ve4v9h5yEOyLdCwMkubL+BYtLExQAof+MNpuh68w1CklKMPQGWF4x3ksS+kxZ6vhdGkBhYq3M6hGGYnU6IUxvuiakveAngX5LeYXXizSPERxNRNXyURMF0H5W5oXjTi5q4xbtedun06v91Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732895154; c=relaxed/simple;
	bh=vs2p7o0USXGj8lafkr28NwTNcuP32Vg/4Vs8AW+mwI4=;
	h=To:Subject:From:Message-Id:Date; b=lNdOiP4SJHA1V4T1+0ywI9sYGQ6A2wD9pPWo7lgy3YzDeIMUBAUs2lsbGFpK5GKKAsgaZSQsbDC8a7egj8o31xc5xtnDLWwRijrUWXy4gH/acCIxqPpI+8s6rtJugKPRB238gGz2jVPZ4aqjLpAQHpL9njLc1lUT1aNE77h0N0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JizHryRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JizHryRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7974C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732895153;
	bh=vs2p7o0USXGj8lafkr28NwTNcuP32Vg/4Vs8AW+mwI4=;
	h=To:Subject:From:Date:From;
	b=JizHryRCVnvPlnyAGL1cL8C26LFyQ607x9uKZcjLg1LUhgh2BroswlYGbShA73iXT
	 ZL/fmAq//YnAWRVYfQx+xNNYPj4VD97o/Cj35SqOYEy/0qvSus5AQajbIyNJ/OumGu
	 o3BR0yow2PvgtJrrmtf/L4G3zpU01TkBKe09Ym+cGv4m7L1BLyXN5Pi+lOUlHRR0zH
	 QIvHJWFQ17UFRBk0rwaVWfJIBK+LAcQupF29NaWaE7rAIRr1NI49u1PaiBmpj1CuJB
	 qpRYIfSIYZ0IFYJFzgvsE5fngUCold3HzAznj+yN37lEATDnLTUfMEkY20p6mj7mQ2
	 W4eZd8WlNgVNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B81D729E7
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289515359.373.14746221849560367136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368918ae4ff83adcdce697f2da7baa8b873fa9d22e034461c93148b7307fd7ec
Date: Fri, 29 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732895153
