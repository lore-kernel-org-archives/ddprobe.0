Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E065449B01
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784582914; cv=none; b=dA/f3PQkv6/OUvBF86aJzuJJ4oGVGdrvFkS2mNSIR5svEIOWi2O++Dd4A2uTJvMU/3mXCMRJsQXbsXY+uKfp3GktvCJ9A/dQPOXQXpF//CWWygTXna4C31pUVlUQFqSsknMZqSmR3PL4jHFkvLkUgssCrJlKwQmXgzZQpXzOHG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784582914; c=relaxed/simple;
	bh=xOT2Bib4j5ogJH+KIRW07d260MsM1I9ls549b6AllI4=;
	h=To:Subject:From:Message-Id:Date; b=kDwXixuk+R6gZN3eX7OjGjj0oHxE1I4OF9RF4zEIjWyi37X/4qIGRp4Bd7UkPxn3SpRgcjSXKspVKOUzP7Ftkb2CpCV6onpKzuGZVdhCGJts87WPh/EEFcv9zuhExoiB1UP+5O34h0mg/qaWTbizzUa2xaAQs+0sNHs2oYc1944=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ol8D/sPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ol8D/sPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D28C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784582913;
	bh=xOT2Bib4j5ogJH+KIRW07d260MsM1I9ls549b6AllI4=;
	h=To:Subject:From:Date:From;
	b=ol8D/sPg98DTIIoDr47IThQd1ngY9A2PZusuMi+AqcwyXCjFyHUd+lPYcDBYwyepM
	 NMbZ+XA/GDzTvwMrVoLnaxsz+C4mZpreWZ79K2iddKdf3uVRjIi9xogWkxZNDV4c3B
	 Om0qWTTwuBTT6Jw/16qS4NsTBHExl8nmufkJOyMbAmoqKHjN0KIqU4VtbiENqr9YVP
	 uiy0Y8RnbMtZFNLd0CLL+KmQzIo445sMLY1DJqstNLfGJP93D+hCknqiF5zSPDkrax
	 +DqFvrOaaAu7e0WzPmn+Ka3DkuqbOTkVhGITQXFr87B86leF7SUfEckXRI43yhCQ+o
	 X/V4LwcPbVdCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDBEC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458291370.489.11237414451518627075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4354c056f5f3bbcbeee260378807b78780c6c88f38fadd16dae4401b59cf38
Date: Mon, 20 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784582913
