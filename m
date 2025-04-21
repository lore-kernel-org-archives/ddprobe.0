Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314741E5B71
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745272794; cv=none; b=ClQQlKkPf4Ai8cn9vMTH6kH3rol0s8GF3uyndAJUOSp1/4gZx81ThHI/mZLcy3jkm01j7Z3I8e4z0mvjZFxhH4TAegMDXnqe7dIfvdOXPk1NoTtB+Xrx6qvAAJvQxblIMlVGRQuFjCFTVinqGV654bGswsDFG6H/5Sjejf/klMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745272794; c=relaxed/simple;
	bh=7ytMZAg5vnzA5T6/o6Qru5OnJ7JytTGg8yUzYM7yFgs=;
	h=To:Subject:From:Message-Id:Date; b=JKnIHNeQyEPCUQAcKsn94bXskmQQb7nplYf0BPRFJaXg5+FUS8gH+AruEs6NKIgeV6cSfIOFrD7zzom5v2CmtNQm0P2zX4h2hEn2Bo+ezS/TDQvQhHb364jWYD7hsI0wA5zWdGLPBlm/+dptzrrhJsOjvQwT0R77iiVK0hq40e0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuvqMqoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuvqMqoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6879C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745272793;
	bh=7ytMZAg5vnzA5T6/o6Qru5OnJ7JytTGg8yUzYM7yFgs=;
	h=To:Subject:From:Date:From;
	b=HuvqMqoI+Nz3u+6yhasMIW6oLFVv2LSVbwOVeQExn4MAOQ0pEX4wEm5Dytj5zO96A
	 veJHd+emgq4yrnSYP7IA8hIzCtlQ4xV1DJl3lLFJVJWDJEPTMjTDQKRfrMaXwpIYFj
	 1FfjpmLAwma1fQsA6/Q9ZNOZIJOyBM0eNcHvNurOcB+n1+s+16aWcPPSgbVXsRDIT2
	 EWg4kSvrfp1SGguuxLenxsF1GyC++84/5pgbrIJ01XKF8TqtluraAlufdCUfhbmwEt
	 ONb1H6u5bglEk9/pdxUrsr/ZxIexkCGR13MMYpW0oFs/POVArClD9cYcb/5+TpHnZG
	 jmBshnueDB9ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E06C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527279360.20699.9575373546069621525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c571c21a2fb405634bc47f2b6be0bff353bd6212e3e04397b01b6d1e48024215
Date: Mon, 21 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745272793
