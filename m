Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215F1284672
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763153394; cv=none; b=Pa/ogQtkuhu2UsIUpiJ7NLkvy4fRVeWJKptNrEj9yCoHc5ui1UuUjod/JJib2qVUI9oc95N/4spFFa+wCF2opnAruYvArONgHVSWV38P+9GTKsfkQVc+N6SKiTl9bYTvjRd69obkTQfYX0s4jCcjqOBFZunxTcmAAwhNPkuIW3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763153394; c=relaxed/simple;
	bh=NV044G+NAjP72RwCalpfTHPHjehu+W7xdSIjNUKjV6A=;
	h=To:Subject:From:Message-Id:Date; b=EIKYfAjKAUl5UKdlUlVjzumGWWWsGH9pJBb/CVUdbzyW1QpQr2/6c1Ei3zEuT0ac+UdvptcjMBkz8KohCLjHlUuxel4pEc3FAa6r8qZK6FzuH5uL99EW2iH2aZ+ONyJPtnEHhno1ASoPvhxBfTY2O25FdWEIKCEZ/LDnrXMOZwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtI+PsWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtI+PsWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0190C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763153393;
	bh=NV044G+NAjP72RwCalpfTHPHjehu+W7xdSIjNUKjV6A=;
	h=To:Subject:From:Date:From;
	b=HtI+PsWJ2f637sFUU+jsayQzvdJUYmdKa5eIEBowtXcFjxIq1wgpVC6zR3Gm/vnuj
	 JRgiuqXJLFYCbLG7bPH8sjiJo8cvMw9YxPvdEjgyCxwYkCxcTWlGhcmVL/ShS2ERCC
	 q2F//Vvccn98X+yqxiw3Ng/7WidJmaZsIJ0oYDPkYYTSdKx+tKZkvJymx6bmgehpIN
	 2stIT1ZuZupfnLva6fzPGDXIhDT6aYjqvvsLiUaa8/d84+nwIF/R3eL7psL1x5kKos
	 p92RrnNzkQmHSgU5LipDSiisIhstscKxIVDQWaoWD7AAd037qDs/nBp5zmpXqfiYUp
	 L4T4Heofa7OoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEEBCEACCE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315339363.2803.4521864632061996291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4681a7d93b4554ad9ad3690b86ebe1f1c9285f79301638d2a23e4736f7c56565
Date: Fri, 14 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763153393
