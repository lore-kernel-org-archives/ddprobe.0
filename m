Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6843B4E87
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786399834; cv=none; b=PsmNg14520AK+Tfk9cPEyYOtp+1got1K26XoaJoHFIk3O9HGE3BFcUxDmmdqkCV4d78++evTxDKsDxyJPdGA44UxluirZHPsnR5lnIiBQnu1qp0QDGMgjJGyr5kLnxyqtf2FsZjNinlQgUww89ZAGb9WjvNU2Qhrvj7wh7JxikI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786399834; c=relaxed/simple;
	bh=JFAtJadN+okr6PClozalp5XxJLszT9jDujGITeGgEN4=;
	h=To:Subject:From:Message-Id:Date; b=AFRvKut0kKM1ynbOx0NkWWwlTPXmyrKax/dGVbTe6wP+ucvL/dsro/BicnChQ5UQv5Uqd9GPnY98ARYxqVInCWhQ6lC9SKZSueWmss76Ab3divsEPnJs9A676LNRYOybBm0ly+wokY6J45BMj+wNj9hS4Au+vtZ3manhX8LWAvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddyq5jYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddyq5jYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AD9C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786399833;
	bh=JFAtJadN+okr6PClozalp5XxJLszT9jDujGITeGgEN4=;
	h=To:Subject:From:Date:From;
	b=ddyq5jYx924TTcvQXy6htaQlWVVX4Bt9/mFf6RKz96ITKwBuPbKZAYCjKWA5nF5BY
	 ZweJxSAl+n8ASA5CSkoMaBljqXmzKkd383vBtSpS/eId138UfmbownP3J/hmtKS5q/
	 DnO5JDGF6wnpGi8f/uBS638kYXlJktPq040aDnVlNdNhRixGhxIdy0pNlh9QIsnAwK
	 wqpCUd71Qy4/YKTlj4G+uEoE1sj6TInpDv4BxF8jegB0GDZlWi63/r9GAZsKPVnQos
	 6R631xrVGfeUpnXc5otXg5X52bVV0wz+n31TEyabq4PzQHnnXtV7LKugjAaebX9zCS
	 XHDIHIboiR2sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F69C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178639983368.28906.7352119764586258464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951476e509bb57c4fd22c10c67c52505a1d4fe3d4cc27ad605c1b13885e94f8e
Date: Mon, 10 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786399833
