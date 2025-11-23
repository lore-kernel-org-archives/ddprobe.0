Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6FE18027
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763863314; cv=none; b=F/boT3HuEDldPSZAujaFoWm1p1ab2oD9R08/se5L7vdM8mzWhBH0hMjEClv+f/y+OkCtE4nq0MlvYpCdfiWqP/9ZP3vKGvbRsKpcDkBER0zyimKg2pJVTEzrb3bqiUlwoPuZDSJ872B0e8hfQlhDMtNAvtqLqqsa20Q4G5MZROY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763863314; c=relaxed/simple;
	bh=7I663EIhSgdrQ5gfBoU6w9vrsIKKkqiDr5lpfvBacNI=;
	h=To:Subject:From:Message-Id:Date; b=EArbsuwTxbeIMy6P6xqRy4U3ROlOmVQz0U52WUXSeIWP2lvKVrKEPm3qspwtI9n9HaQM8TpsnAwgLgDLjp3iqut72kiqUvMDeoyELY67FS6MJ+afuSlzPuyz/a9VTon75QorL9YB8BecayAGEVeWvAy3tiJN5xjUvgAsGazhP84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1owHbz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1owHbz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA54BC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763863313;
	bh=7I663EIhSgdrQ5gfBoU6w9vrsIKKkqiDr5lpfvBacNI=;
	h=To:Subject:From:Date:From;
	b=a1owHbz6kGBDS1C48mXkA+F2b/gZjetjYW0Jme8mVuDIYRDTAfvNWxNTNQ0iLKzKB
	 IrQ9pleSTGOfIDP2gfl7CvT1PE1BcQOk/NL61aYD/5gS4kFpHj1uVBov9P3U13M3bW
	 WdN47F04hyqgzBdJ4nsXKPAR9PqpUUTZX5AqJgwx9k3dwVunRYlBbVhjZqoim//dpO
	 O9AhDgTjRwQ+kdRfls99Ku6i8EOWB7E0aRW+ZbC7LgG7KlruRHq6jW+e+CscGowOhS
	 xE8lADGHo3rOF1Fnzzs/NegoTD6npUqgUPibDIfXKYYZgBpyxXeb4AV1+SRYLtKRf9
	 kUtMug2FooROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B51CFD315
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386331358.10896.17640427041630826493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477d2ce3e033e9b97e301be9af07dfededa94f0b881097a4f675813a19e0fec4
Date: Sun, 23 Nov 2025 02:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763863313
