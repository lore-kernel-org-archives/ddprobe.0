Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4936B14A4C6
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742252994; cv=none; b=Nsg14BBwl26NwfUha1WaUt4Iq5AWdLisi9WfwO1VZ9ICI3D/MgtE77BGKw/9QgJzMVnVFr7ktGs0IaJAUiVmBDGLfR+5f3AEXUqEFeyCcqtKed03wnVoKUkQjl7T35MdO+4fmqtYJhAfTtTNuxrmJaRRJSq6z3510QahWqh+7k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742252994; c=relaxed/simple;
	bh=PJuWAp/HLKzuu5rdBp58FGynF6OjybjB4+6/0CqFOZI=;
	h=To:Subject:From:Message-Id:Date; b=D7MEE/hhA9Ac4yudKPH9+u6DFD9bqLDIKXlwcUh4tzp1vrwNpLOn5RseseLEG7QeVqqBvoOnEY8y3osVlV7lpdoAeZXJ7VFFNrHU6JR0tLAV43T8DceCExEMIQglffDj+r3TXGuk4LXxPYUMvzz7n0XJri/ACARnE6LMETtWAzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujh96Uc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujh96Uc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCE3C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742252993;
	bh=PJuWAp/HLKzuu5rdBp58FGynF6OjybjB4+6/0CqFOZI=;
	h=To:Subject:From:Date:From;
	b=ujh96Uc/lOcKu5YwuVXorKsfc4sj1doVu1A5NbPoAZ15GCqYdaPqIuMRAfIIuXxxG
	 KKGOSz6RVJx3/4KjWOQfBSrhPGR//fwEVPE6caLMoLViVbjrEfkSLa3SiJYxGcip0m
	 CyVonyvNkTsjx97y2mk2et/S9H569fsbMIVP2gxunBNmT2KT6/IYMySDtEU5rGysv1
	 g0zY7Hizkk4htP6ZY0vFf0PQTz5w6T0dLH2mtZnscxGgGxLFpwfJQmed2vfsbOCSoq
	 ufwDaF7Yig0XZ5BUHHGZ5grSSMlLwBwMOjWgIXPDo1dRnrJMCr8QxhcksNNyVwWIi7
	 x/jTedXaDfOOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F688C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225299364.5237.8529700366714305306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47736f2ba54564a5b040096e6cfd97d5d007bcfdb3d4d3537957519ad685330a
Date: Mon, 17 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742252993
