Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5E063BF
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711700897; cv=none; b=ZxE7ep37A46dnQLc2uvF/wQt/TrFI9pvo0czXqtJcCb7GFnaEmY5FfG9Y4jdKZbXkNSn9qC/814tUriBnhaoILTu+Zf8M1azAjyz9H15J7sp1Er7tMfVLIPZd1lUY/hATXqE7TA4Yok+8A39wZEF2Yex5RelW9biSvW10wvhzmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711700897; c=relaxed/simple;
	bh=zbSrsR4wibxRvC1T4brSqOXQnED8Xmua2Wuvuxx7L20=;
	h=To:Subject:From:Message-Id:Date; b=oforgAe8VF+1EsqCVlXjipUKdjVu7XDfNUUQtm39CLxagHQR1JvYH2mtCyTp/Zo8EYWyTV4BHONphiq+lLmSpko8Xc7rI47FaDhe+yX6yzHbfhaMAXL7ejTTqRdB8AI08o5lyY4bZuYxW3CvWbGnZMRMUdOHMmeAp90nesnVoYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIskv/EL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIskv/EL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7AAC433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711700896;
	bh=zbSrsR4wibxRvC1T4brSqOXQnED8Xmua2Wuvuxx7L20=;
	h=To:Subject:From:Date:From;
	b=vIskv/ELCp+WMkDKwj2klq5GKvW0kzRt8o18+OxSOTtOUwA0NAgdfXU440+V4YO+a
	 GGsq4EgqiKLC3RJu4foY1ID0sI5bZxgIt534TvH2Or8tOCda4Lktk9QZZ4I/8ARnrW
	 C47j/tAcSB0QLFzF2kQ6TjHb9MQjUmftYRv5WfdJciBLVpEITARQMGxfR7ePAGt3zW
	 V8yd4dDdxKHOtnmrpOWKtJ8E289SVhVAKZGKT/pdw1IqRELq8hkQ+xXBewZXL2YuL0
	 U7WEzU620sZTQSchprDRYJpjemJQdEkWPs5QOBNN9q8yHoKA091B4jauRq3AmuGyvC
	 yhm/L8JqP4DZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6431FCD1288
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171170089640.3204.16785964750067379547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7037327b7fe9350b8f5aa88ac8f2fd9ce0fde4ef50507d9091d0910c554924f
Date: Fri, 29 Mar 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711700896
