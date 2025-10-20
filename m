Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4072232C316
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760995794; cv=none; b=S1g6locBkxprVNWX6Y2HeRznj/vhRXIkjkE8kk95wKGtGQEhjV9AB4VtVzBkDB4nRUS3dqFDW5Q7EAdRTtxUawk6ayukIJA0fKBws4IuTaHEqtdv/bAfd2SoJXnfDxnoyCHdYfXHlS0Ivm9ta9LTt2AumcOaLstZdIWrrY0U+Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760995794; c=relaxed/simple;
	bh=llOwsWpb+4LmbjH87Ycxm0cqitdhiIwSRYmTE7A4z/I=;
	h=To:Subject:From:Message-Id:Date; b=rO3koDDLqakW74UkJ0W38SmyOPlwwIy4QHYKwW1F6AXtzDrNbThn9/q14Tm3T89B9wCi+OHKq4uvNZz6gut9TOytBVy5vQa35i7qk4jYnqQ57tf/MvznHQGnhb7j3BsKhIHJNYVNw1/TjGjH0q9Iar3yGEYvT50PK8pQMMZxs0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUbUAyeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUbUAyeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8173C116D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760995793;
	bh=llOwsWpb+4LmbjH87Ycxm0cqitdhiIwSRYmTE7A4z/I=;
	h=To:Subject:From:Date:From;
	b=aUbUAyeFbMntG2F2Z7PlsTfw8BPRAwb646/7v5XgFo+vmho39JMiVp6VSXJ19h0dr
	 byhdPg95crFmlJJmqT9ZIDNRnnH4OOqmkOC/FxA8+gVQgaYsimrQdWGJpvXAaN14O8
	 1j9N5gFWZ+a/qb6v/gpCWWZ90u+x+aSonbeNxA8y/hslFXf9/JWubrEXZAetdyC57r
	 JLpKDmPWGHjWG4AwooeqetINgoXqTjdg4QHnLqgrkaEr8/ZUsy5pYedzs+KstFMlCi
	 NOwv3PQlPCEFPH3ynbs/VnI/6o4E6dNcyitu69ePhJAEdGVkKKkU6ihkR/I0gMqGW9
	 ZY2YKBjA0Zg9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92725CCD1A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099579357.21238.14907240486675992163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c4c32a2262ce35965266678909ff5deb0d445e49832a5b4658b7e3209cdd21
Date: Mon, 20 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760995793
