Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2979D81720
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759489794; cv=none; b=KsgJSGC78K6+HO18/1+PHJOprBeicwbjpCn6LD8CdsNh6/HEazo1fFrtDoznIwq1XVUrcBdCqlVPgn+uyXTBZov91zrRMDgAl0nHHH8bgDetbnXdyvln83nKY+BjQT7CVXp21OW5CJW9IemZZS0A4pjn0aP98gwlTj6NI/yrlnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759489794; c=relaxed/simple;
	bh=fM8KPhI3PM+2q7R/zLGYR9wLHbtuXczDvFiZSrF4ROs=;
	h=To:Subject:From:Message-Id:Date; b=YCoByY0kaXX+r36qZxDpmXYNZNrTXZFDpf0YGUeGK0umFS7nA5CijaH+hDR/ad5M+yJtJ1C4FaQHSg6oLHdPhRgayGxHmoHWq1BKh4B58kfqLhVusJozOHs2uTUDhuVZ9YFNM/t6WHF7glkXlA7YJC/GKwAsXDw7DqfHMJXzJkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTNK7WbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTNK7WbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC85C4CEF9
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759489793;
	bh=fM8KPhI3PM+2q7R/zLGYR9wLHbtuXczDvFiZSrF4ROs=;
	h=To:Subject:From:Date:From;
	b=gTNK7WbMIRyPNAQ3uJTTJv7phhW2F1eEgmVTsxgFUo9fCG8T+TmpfTp8ASY6T45iv
	 mCprzqoHxMBOeYxx9ZviM7UQ8ziLbP3yXsIR4zxnY8H4KgPBabxh2vCGwmIJDAR6s6
	 r1P/uxZRUSUc/bt1V+q20q1Ad99OKZXbgIjI6dT+6EIblJUkGm9YjxnNFz0VTigN2k
	 zre8E1EradhTJwxQnjn7Qr6lv50GqC86j/hImLUD8O9aPMZXVSnmgy3Wm7MNmDZCWC
	 aMiWUe9P7YXn8BnUPQH3bhEJIn7tdijMJg/Dszs8cefLeWEjfoT9fUN34AtLIIhldG
	 8OUpyVTTuGwuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC3CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948979358.4090.1761176843001752830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdea2b548c2d935a386cf530c7253a09f6ca6b718015e9746b2a42f9ded888ef
Date: Fri, 03 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759489793
