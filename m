Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAB925C6E2
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505393; cv=none; b=WccDhlO4IPkqEcRXr/rhZb+3JWQwk0qrpBByFuff0wGlZaxHg94Bltu6QP4dsvujso7BIPwpHogn3ZJqAm8adwMjhuar3gNlsQvBabJ9ijB53Hn38I6FkPygK+zEPV13Fm825XYq8OOunXYk2M7VUmm/+vTttstBtZqY7IFQ5N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505393; c=relaxed/simple;
	bh=2283HSEaBpUG7mm5VsGNyBrhJYQgcBAV/YKiLNYFQKY=;
	h=To:Subject:From:Message-Id:Date; b=CZ47LKVsURFk3WlR02rK7A0OzT8ZrHjoZ+uy0BOo482rt3+bXVrIokBipRGP9jJZhpM/7QkqyBAsG1ur/nwMz+soMiPXU/7yfmk9b8jDh6fbmZjxv1UQVBBqiP6xbiTAVNKH6VtNvvWtEWjHKb/b1ljxxxU9WtLQIODo+1/6KmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZB22aMFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZB22aMFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB85C19421
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762505393;
	bh=2283HSEaBpUG7mm5VsGNyBrhJYQgcBAV/YKiLNYFQKY=;
	h=To:Subject:From:Date:From;
	b=ZB22aMFHb2yhREikdov+w62lKHdzqfLqHAG5Ym6wvQLOo9MlWf49zmVT2da8f01Fq
	 8iu8t5t1UPR89OJFPLIT4cAVv2257Sp2yIncVvCGDCCBB9PL4L+D99e+P7eDfwoDrL
	 rEah3zwDILMTX+8KFR0xYAu0KNMQWNnokEBOMqpBmOaJuSGMjUrpxFy7EIOVyqa87+
	 XBMNBmx5V8y3Oazmy0lliFXTupqt+LpV82XK7IZSF4rg4dLDTYgRsj9nVEQbEAaAkE
	 UEFTJ0iYqMjFszDUX1En0kS8hB8HyWWbxdsD5wTmP/PkEN5s7WradwZnHWhIhIDJAM
	 gJzafgJHhk0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004ECCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250539358.23798.8836220586510219751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c9cb89d9bd3c2b5f5726d445357222303c5084f0add59586734ecd0801b183
Date: Fri, 07 Nov 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762505393
