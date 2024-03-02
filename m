Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03017A947
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709389697; cv=none; b=g+6x6pLO/4Ju/TcDI5qyIFJ0jS6//bsRMNd5/S15Gy4wmoLGJz1RLSiU+BSwI5mM1RMVlYrE5tpnpeYaTAaBhJHUoA9YqjaBgmBhMmc2a9gF6LmDdd3pnJy/okrhPbg3c1OFf6LN7rHXIYqiQinbmJ7f+1d40qlZ78A6L9ek6nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709389697; c=relaxed/simple;
	bh=50NxtqY2Cy86cY9jWx4NilHl3853LfFWlNatowiPB60=;
	h=To:Subject:From:Message-Id:Date; b=IMNTLT/SiQDuT0cABqBslzFgW708oXx1WnsU8Sp26CwVgQe517ZpiXwe7kuhC5o94RmL6IhMzxJWCYecWdz8Q+6/cpmeG1WP00Ba95XhQ9klQphV+Fx+/YoKvm4H2WeOZPW4rMxnMjA0qaf29Brfqe0F7Yh2jm5uhBkUPYzxuOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmPyHQEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmPyHQEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C5BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709389696;
	bh=50NxtqY2Cy86cY9jWx4NilHl3853LfFWlNatowiPB60=;
	h=To:Subject:From:Date:From;
	b=cmPyHQEHLC0foPHzPBfidkqBfXlRxR1tuH5knOR6y8vZrsJVagbd/uSDrPO4H2cUm
	 4IkvT4XavLXdgH3QuvBX1lScuOmnCqFNPht2rSsTtwdqQ/5FSWzLxHvdWFsNPvCBoX
	 x9iEqlfvEPjL+WBizzU9IOhuCAxckrvOmgf7JiZrBuTbcqWX+Tjd87L/AqbsLBYeND
	 nza+yBvWBBxVFClNUb/rsdTebK0c4LdW6RYE9pBPBfJvq166HOSLqh0Ib6l0PVdNBt
	 EwYxzIcU0wgHZEUc+6LkAPX+eBTLrdNQWp1EiOp9blMTAUFubA9rMsY+/DoB77LmXL
	 PnO5AD23WR2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6825BC5478C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170938969639.4084.16583596504519564982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 690da9a75a3da0fa98d876cbfd350b880caae50e8b814c0341ee9c66aadcd810
Date: Sat, 02 Mar 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709389696
