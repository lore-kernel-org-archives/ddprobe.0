Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E8D1E9070
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730832354; cv=none; b=H7oHvnOFbh50ll76sX9sY51iuOlv0DHrneRIoRrE3pzW580zj7z9sVgFtuBRhMGSGuEvg5i3vFeYzTXseH/0MRVwJdhY0OhkxSl8l/dzj2jZSJmn1qJ6If7KgCLQfScJwyt/jyTIsNbTOZnWh0feBDjahOfrY4xE8UNR7TNd3Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730832354; c=relaxed/simple;
	bh=jIA7fLROEnbYM7y3OW0rPEjgkF3+EfX/jFQ6C953aZc=;
	h=To:Subject:From:Message-Id:Date; b=rORDlm/TgHf2qVLwcB7A3Krbl8SsNkn+SMQga/KI++6rzpI/dqdGgIHobv0PAkksqTuO1i/mox/4WsllIymrmigunAnkzksdVi0JpYT1MzfR3t3UFTC/5P/Jushg+KLimqary8BTu4mr6tdpKPEDkpJpTXoyDWBIKaszf0sHOR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpJP8B/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpJP8B/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2540C4CED4
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730832353;
	bh=jIA7fLROEnbYM7y3OW0rPEjgkF3+EfX/jFQ6C953aZc=;
	h=To:Subject:From:Date:From;
	b=dpJP8B/xbCXdr/jidA7kYL3Uwk44QSRxn3+KQPvslqEPD5UFxliXHzV8rKj3rX7b8
	 +9FclcrJwLubZ5Lt0lr38UX3gcnPepPBxQdEY/sNwRzQUYy9werVjocSMFPpdONSJO
	 J29VO5qeiul8hRbdygQJ5/OMGBq0QiKhfelWKsEaThbB6gf4LR8XDdXn6/NzqJW4Zw
	 gpz4lVSbngD5HSEU1M4zdeadmm5inMXz2Lsb00n6qvDWa0LmgRppJ6Uh72cNGscpVX
	 623SupLJfNuo6hoo8ZuOzektnDc/693rjSVjurEgElaX/XJEYOavGnqruX6DpdTTy2
	 5WfeAleuOb9Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4DED33A22
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083235362.31122.970181477810891102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a69337c313ba224ddf30ce9c3aa1092d2a60e3f8ca5daf8986dea072c74e21f
Date: Tue, 05 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730832353
